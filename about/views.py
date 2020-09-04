from django.shortcuts import render
from.models import About
# Create your views here.


def index(request):
    aboutsdis = About.objects.all()
    context = {
        'about': aboutsdis
    }
    return render(request, 'pages/index.html',context)