from django.shortcuts import render

# Create your views here.
def HomePage(request):
    template_name = "index.html"

    return render(request, template_name)