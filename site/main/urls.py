from django.urls import path
from . import views 
#from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='home'),
    path('about-us', views.about, name='about'),
    path('create', views.create, name='create'),
] 
