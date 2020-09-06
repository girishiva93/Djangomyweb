from django.shortcuts import render
from about.models import About
from service.models import service
from portfolio.models import portfolio
from textanimation.models import textAnimation
def index(request):
    services = service.objects.all()
    about = About.objects.all()
    portfolios = portfolio.objects.all()
    textAnimations = textAnimation.objects.all()
    context = {
        'services' : services,
        'about' : about,
        'portfolios' : portfolios,
        'textAnimations' : textAnimations
    }
    return render(request, 'pages/index.html',context)
