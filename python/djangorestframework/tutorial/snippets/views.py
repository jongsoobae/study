from snippets.models import Snippet
from snippets.serializers import SnippetSerializer
from rest_framework import generics
from libs.views import paginations
from rest_framework import permissions
from snippets.permissions import IsOwnerOrReadOnly


class SnippetList(generics.ListCreateAPIView):
    permission_classes = (permissions.IsAuthenticatedOrReadOnly,)

    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class SnippetBaseReadOnlyList(generics.ListAPIView):
    permission_classes = (permissions.IsAuthenticatedOrReadOnly,)
    serializer_class = SnippetSerializer


class SnippetOwnList(SnippetBaseReadOnlyList):
    pagination_class = paginations.OwnContentPageNumberPagination

    def get_queryset(self):
        return Snippet.objects.filter(owner=self.request.user)


class SnippetSearchList(SnippetBaseReadOnlyList):
    def get_queryset(self):
        return Snippet.objects.filter(content__icontains=self.request.query_params.get('content'))


class SnippetRandomSearchList(SnippetBaseReadOnlyList):
    def get_queryset(self):
        return Snippet.objects.random()


class SnippetDetail(generics.RetrieveUpdateDestroyAPIView):
    permission_classes = (permissions.IsAuthenticatedOrReadOnly, IsOwnerOrReadOnly,)

    queryset = Snippet.objects.all()
    serializer_class = SnippetSerializer