# Webscraping, BeautifulSoup, & HTML
Webpage elements are nested:

<body>
    <div>
        <h1>

        <h1/>
    <div/>
<body/>

Websites are made up of HTML, CSS, and Javascript

Technologies used in this unit: 
1. Webscraping - pull data from website (many companies going to API to prevent server overload from scraping)
    - HTML: the skeleton
    - CSS: the appearance (clothes) of an object on a page. Class or ID. Multiple objects can be classes; IDs are globally unique on the page.
    - Javascript: the muscle for performing actions
2. MongoDB - a NoSQL database (non-relational) can hold chaotic data
3. Flask - rendering websites with HTML

BeautifulSoup a Python library for pulling (parsing) data from HTML and XML files.

Document Object Model (DOM): visible website interface defined by tags of the HTML skeleton

When scraping, prerendered websites are easy to scrape, but asynchronous websites require a browser manager to navigate to the page and wait.

Splinter (Selenium): web driver/automated browser for asynchronous websites

When scraping: start small, then iterate and expand. Start in Jupyter Notebook then copy code over to VSCode

HTML Table structure:
<table>
	<th> Table Header 
	</th>
		<tr> Table Rows 
		</tr>
			<td> Table Data 
			</td>
</table>