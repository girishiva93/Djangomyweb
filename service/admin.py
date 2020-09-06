from django.contrib import admin
from.models import service

# Register your models here.
class serviceAdmin(admin.ModelAdmin):
    list_display = ('id','header')
    list_display_links = ('id','header')
    search_fields = ('header','description')
    list_per_page = 25


admin.site.register(service, serviceAdmin)
