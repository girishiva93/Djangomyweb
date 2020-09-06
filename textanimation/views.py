from django.shortcuts import render
from.models import textAnimation
# Create your views here.


def index(request):
    textanimation = textAnimation.objects.all()
    context = {
        'textanimation': textanimation
    }
    return render(request, 'pages/index.html',context)