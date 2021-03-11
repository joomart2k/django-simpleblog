from django.contrib.sitemaps import Sitemap
from .models import Post

# создание карты сайта
class PostSitemap(Sitemap):
    changefreq = 'weekly'
    priority = 0.9

    def items(self):
        return Post.published.all()

    def lastmod(self, obj):
        return obj.updated
