from . import views
from django.urls import path

urlpatterns = [
    path('blog', views.BlogHome, name='blog'),
]