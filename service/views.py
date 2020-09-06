from django.shortcuts import render
from.models import service
# Create your views here.


def index(request):
    services = service.objects.all()
    context = {
        'services': services
    }
    return render(request, 'pages/index.html',context)