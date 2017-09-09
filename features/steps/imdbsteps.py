from behave import given, when, then

from selenium import webdriver
from selenium.webdriver.common.keys import Keys


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
    #as long as Next is avaliable, click on next
    #    get html source
    #    assert all genre contain word "Comedy"
    html = driver.page_source
    assert "terry" in html
    #raise NotImplementedError(u'STEP: Then the list of movies should only contain relevant results')


@given(u'I sort the list by "Release Date"')
def step_impl(context):
    #driver.find_element_by_xpath("//select[@name='sort']/option[text()='us:descending']").click()
    all_options = driver.find_element_by_id("Component1")
    options = all_options.find_elements_by_tag_name("option")
    for each_option in all_options:
        print(each_option.get_attribute("value"))
    driver.find_element_by_css_selector("select#sort > option[value='us:descending']").click()
    print(driver.getCurrentUrl())
    assert "sort=us" in driver.getCurrentUrl()
    #raise NotImplementedError(u'STEP: Given I sort the list by "Release Date"')


@then(u'the list of movies should be displayed in order of release date')
def step_impl(context):
    #get html source
    #go thru the list, extract year, assert next item is <= last item
    raise NotImplementedError(u'STEP: the list of movies should be displayed in order of release date')
