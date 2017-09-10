from behave import given, when, then

from selenium import webdriver
from selenium.webdriver.support.ui import Select

driver = webdriver.Firefox()


@given(u'I load the Top Rated Movies page')
def step_impl(context):
    driver.get("http://www.imdb.com/chart/top")
    assert "IMDb Top 250 - IMDb" in driver.title


@given(u'I refine by Genre "Comedy"')
def step_impl(context):
    comedy_link = driver.find_element_by_link_text('Comedy').click()
    assert "Highest Rated Comedy Feature Films" in driver.title


@then(u'the list of movies should only contain relevant results')
def step_impl(context):
    all_genres_in_page = driver.find_elements_by_class_name('genre')
    for genre in all_genres_in_page:
        assert "Comedy" in genre.text


@given(u'I sort the list by "Release Date"')
def step_impl(context):
    selection = Select(driver.find_element_by_class_name('lister-sort-by'))
    selection.select_by_value("us:descending")
    assert "sort=us" in driver.current_url


@then(u'the list of movies should be displayed in order of release date')
def step_impl(context):
    years_in_page = driver.find_elements_by_class_name('secondaryInfo')
    assert all(years_in_page[i].text >= years_in_page[i+1].text \
        for i in iter(range(len(years_in_page)-1)))

