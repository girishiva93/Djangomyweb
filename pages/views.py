from django.shortcuts import render
from about.models import About
def index(request):
    about = About.objects.all()
    context = {
        'about' : about
    }
    return render(request, 'pages/index.html',context)
