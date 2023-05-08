Authors: Humza Salman and Devshan Renganathan.

Network Descriptions:

Shakespeare's poetry words (directed, weighted) network where words are the nodes and the edges are directed edges from one word to another as it appears in a line in a poem. A word has a directed edge to its successor word in a single poem line. The words were scraped from PoetryFoundation and a graph was created as described, and then the graph was refined using lemmatization, a technique used to turn words into their root forms, to reduce the number of nodes and edges. A variety of analysis was conducted including: diameter, degree distribution, centrality measures, community detection, and visualization.

Lemmatized Graph:
Nodes: 3893
Edges: 7653
Components: 54

Parts of speech graph (directed, weighted) created using NLTK libraries to identify the parts of speech in Shakespeare's lines to try and identify his sentence structures. The graph is comprised of trigram combinations of the parts of speech in a sentence of Shakespeare's poetry. Trigrams are a sequence of consecutive parts of speech in each line, and we created a graph using all the various trigrams in our dataset. These were analyzed to find the most common trigrams Shakespeare starts and ends his lines with, and based on a frequency distribution, we computed the most likely sentence structures in his poetry. Then we trained an AI model (Curie) on Eminem's lyrics to try and fill in Shakepeare's sentence structure with Eminem's lyrics for our Awesomeness factor.

Parts of Speech Graph:
Nodes: 3094
Edges: 7235

Data Sources:
Shakespeare's Poetry: https://www.poetryfoundation.org/poets/william-shakespeare
Eminem's lyrics: https://github.com/HassamSheikh/rnn-for-eminem/blob/master/lyrics.txt


Submission Files Descriptions:

We created and used many files during this project so to make parsing our files easier we categorized them into folders and have provided descriptions on what each file is and was used for.

The network files are located in: /Shakespeare gml Files
The analysis files are located in: /Analysis
The scraper files are located in: /Scraping and Model Building

Folders:

/Analysis

	/lemmatized_analysis.ipynb --
				This file contains the analysis conducted on the lemmatized graph, including: visualizations, community detection, etc.
	
	/presentation_analysis.ipynb -- 
				This file was used to compute some last minute analysis details that were useful for preparing the presentation.

/Awesomeness

	/openai.ipynb -- 
				This file contains code to fine-tune the OpenAI Curie model on Eminem's lyrics.

	/SentenceStructureAnalytics.ipynb --
				This file contains code related to generating synthetic shakespearean sonnets and using our fine-tuned model to generated lyrics.

/Eminem Lyrics

	This folder contains data regarding Eminem's lyrics including the .txt file, and the json files created and used to train the AI model.

/Scraping and Model Building

	/model_builder.ipynb --
				This file contains code related to building the .gml files and also other files such as sentence_start_to_end_pos_tag.p.

	/scraper.ipynb --
				This file was used to scrape PoetryFoundation to collect our data.

/Shakespeare gml Files - NETWORK FILES HERE

	/sentence_start_to_end_pos_tag.p --
				This file contains the frequency of how often shakepseare started with a trigram POS tag and ended with a trigram POS tag in the same line.

	/shakespeare_lemmatized.gml --
				This gml file contains the lemmatized graph, the main graph used for vocabulary analysis.
	
	/shakespeare_poems.p --
				This file contains Shakespeare's sonnets and poems that we scraped from PoetryFoundation.

	/shakespeare_pos_3gram_fixed.gml -- 
				This gml file contains the trigram POS tag graph.

	/shakespeare_raw.gml -- 
				This gml file contains the raw predecessor-successor word relations. No lemmatization was performed.
