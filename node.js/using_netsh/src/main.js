const process = require('child_process').exec;
// const spawn = require('child_process').spawn;
const os = require('os');

console.log('OS : ', os.platform());

const port = 19982;
const serverName = 'escape greenfrog 2016';

function OpenFirewallForWindows(serverName, port) {
  if('win32' !== os.platform()) {
    return;
  }
  new Promise((resolve, reject) => {
    process(`netstat -na | findstr /r /c:\".*TCP.*:${port} \"`, (err, stdout, stderr) => {
      // 위 내용으로 열려있는 포트를 못찾으면 에러 발생!
      if(err) {
        console.log(`1. exec error: ${err}`);
        return resolve();
      }

      // 이미 존재하는 포트가 있다는 응답.
      console.log(`1. stdout: ${stdout}`);
      console.log(`1. stderr: ${stderr}`);

      reject('Found');
    });
  })
  .then(
    () => {
      const cmd = `netsh advfirewall firewall add rule name=\"${serverName}:${port}\" dir=in action=allow protocol=TCP localport=${port}`;
      process(cmd, (err, stdout, stderr) => {
        if(err) {
          console.error(`2. exec error: ${err}`);
          return;
        }
        // 이미 존재하는 포트가 있다는 응답.
        console.log(`2. stdout: ${stdout}`);
        // console.log(`2. stderr: ${stderr}`);
      });
    },
    (reseaon)=> {
      console.log(reseaon);
    }
  );
}

OpenFirewallForWindows(serverName, port);

//
// OpenFirewallForWindows(serverName, port);
// // netstat.stdout.on('data', data => {
// //   console.log(`stdout: ${data}`);
// // });
// //
// // netstat.stderr.on('data', data => {
// //   console.log(`stderr: ${data}`);
// // });
// //
// // netstat.on('close', code => {
// //   console.log(`child process exited with code ${code}`);
// // });
