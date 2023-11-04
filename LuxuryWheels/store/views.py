from django.shortcuts import render, redirect
from django.contrib import messages
from .models import *

from django.http import JsonResponse

# Create your views here.

def home(request):
    trending_products = Product.objects.filter(trending=1)
    context = {'trending_products':trending_products}
    return render(request, "store/index.html", context)

def categories(request):
    category = Category.objects.filter(status=0)
    context = {'category':category}
    return render(request, "store/categories.html", context)

def categoriesview(request, slug):
    if(Category.objects.filter(slug=slug, status=0)):
        products = Product.objects.filter(category__slug=slug)
        category = Category.objects.filter(slug=slug).first()
        context = {'products': products, 'category':category}
        return render(request, "store/products/index.html", context)
    else:
        messages.warning(request, "No such category found.")
        return redirect('categories')

def productview(request, cate_slug, prod_slug):
    if(Category.objects.filter(slug=cate_slug, status=0)):
        if(Product.objects.filter(slug=prod_slug, status=0)):
            products = Product.objects.filter(slug=prod_slug, status=0).first()
            context = {'products': products}
        else:
            messages.warning(request, "No such product found.")
            return redirect('categories')
    else:
        messages.warning(request, "No such category found.")
        return redirect('categories')
    return render(request, "store/products/view.html", context)

def productlistAjax(request):
    products = Product.objects.filter(status=0).values_list('name', flat=True)
    products_list = list(products)

    return JsonResponse(products_list, safe=False)

def searchproduct(request):
    if request.method == 'POST':
        searched_term = request.POST.get('productsearch')
        if searched_term == "":
            return redirect(request.META.get('HTTP_REFERER'))
        else:
            product = Product.objects.filter(name__contains=searched_term).first()

            if product:
                return redirect('categories/' + product.category.slug + '/' + product.slug)
            else:
                messages.info(request, "No products matched your search")
                return redirect(request.META.get('HTTP_REFERER'))

    return redirect(request.META.get('HTTP_REFERER'))
