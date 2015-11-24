# Change the followin oracle account id and password to your oracle account id and password. Also, change A0 to your group's number but don't use F15 because it will make some internal names be too long.
conn = connectTo 'jdbc:oracle:thin:@sayonara.microlab.cs.utexas.edu:1521:orcl' 'C##cs347_amk2843' 'orcl_amk2843' 'rdf_mode' 'C8';

Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 1, B_NAME : 'AUSTIN BEERWORKS', YR_RND : 4, ROTATING : 2, ADDRESS : '3009 INDUSTRIAL TERRACE', PHONE : '5128212494', RATING : '4.6', BREWER_NAME : 'JOHN', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 2, B_NAME : 'LIVE OAK', YR_RND : 4, ROTATING : 1, ADDRESS : '3301 E 5TH ST', PHONE : '5123852299', RATING : '4.7', BREWER_NAME : 'JEFF', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 3, B_NAME : 'INDEPENDENCE', YR_RND : 5, ROTATING : 2, ADDRESS : '3913 TODD LN No. 607', PHONE : '5127070099', RATING : '4.4', BREWER_NAME : 'JOE', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 4, B_NAME : '512', YR_RND : 4, ROTATING : 3, ADDRESS : '407 RADAM LN', PHONE : '5129211545', RATING : '4.6', BREWER_NAME : 'JEREMY', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 5, B_NAME : 'THIRSTY PLANET', YR_RND : 3, ROTATING : 2, ADDRESS : '11160 CIRCLE DR', PHONE : '5125790679', RATING : '4.5', BREWER_NAME : 'JOSH', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 6, B_NAME : 'SOLID ROCK', YR_RND : 4, ROTATING : 2, ADDRESS : '2214 BEE CREEK RD', PHONE : '5125711740', RATING : '4.1', BREWER_NAME : 'JANE', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 7, B_NAME : 'REAL ALE', YR_RND : 4, ROTATING : 3, ADDRESS : '231 SAN SABA CT', PHONE : '8308332534', RATING : '4.6', BREWER_NAME : 'JAKE', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 8, B_NAME : 'TWISTED X', YR_RND : 5, ROTATING : 2, ADDRESS : 'W 150, 23455 RANCH RD 13', PHONE : '5128295323', RATING : '4.2', BREWER_NAME : 'JIM', BREWER_EDU : 'GERMANY'})"
Neo4j on conn "CREATE (:brew_co { BREWERY_ID : 9, B_NAME : 'INFAMOUS', YR_RND : 3, ROTATING : 1, ADDRESS : '4602 WELETKA DR', PHONE : '5124878786', RATING : '4.6', BREWER_NAME : 'JULES', BREWER_EDU : 'GERMANY'})"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 11, BR_NAME : 'FIRE EAGLE', B_TYPE : 'AMERICAN IPA', BREW_ID: 1 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 12, BR_NAME : 'BLACK THUNDER', B_TYPE : 'GERMAN-STYLE SHWARZ', BREW_ID: 1})"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 13, BR_NAME : 'PEACEMAKER', B_TYPE : 'ALE', BREW_ID: 1 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 14, BR_NAME : 'PEARL SNAP', B_TYPE : 'GERMAN-STYLE PILS', BREW_ID: 1 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 21, BR_NAME : 'HEFEWEIZEN', B_TYPE : 'BAVARIAN WHEAT', BREW_ID: 2 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 22, BR_NAME : 'PILZ', B_TYPE : 'GOLDEN LAGER', BREW_ID: 2 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 23, BR_NAME : 'BIG BARK', B_TYPE : 'AMBER LAGER', BREW_ID: 2 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 24, BR_NAME : 'LIBERATION', B_TYPE : 'IPA', BREW_ID: 2 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 31, BR_NAME : 'AUSTIN AMBER', B_TYPE : 'AMBER', BREW_ID: 3 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 32, BR_NAME : 'STASH IPA', B_TYPE : 'IPA', BREW_ID: 3 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 33, BR_NAME : 'CONVICT HILL', B_TYPE : 'OATMEAL STOUT', BREW_ID: 3 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 34, BR_NAME : 'POWER & LIGHT', B_TYPE : 'PALE ALE', BREW_ID: 3 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 35, BR_NAME : 'BOOTLEGGER', B_TYPE : 'BROWN ALE', BREW_ID: 3 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 41, BR_NAME : 'WIT', B_TYPE : 'BELGIAN WHEAT', BREW_ID: 4 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 42, BR_NAME : 'PALE', B_TYPE : 'AMERICAN PALE ALE', BREW_ID: 4 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 43, BR_NAME : 'IPA', B_TYPE : 'AMERICAN IPA', BREW_ID: 4 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 44, BR_NAME : 'PECAN PORTER', B_TYPE : 'PORTER', BREW_ID: 4 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 51, BR_NAME : 'THIRSTY GOAT', B_TYPE : 'AMBER', BREW_ID: 5 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 52, BR_NAME : 'YELLOW ARMADILLO', B_TYPE : 'TEXAS ALE', BREW_ID: 5 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 53, BR_NAME : 'BUCKET HEAD', B_TYPE : 'IPA', BREW_ID: 5 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 61, BR_NAME : 'DAUNTLESS', B_TYPE : 'IPA', BREW_ID: 6 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 62, BR_NAME : 'CORNERSTONE', B_TYPE : 'CREAM ALE', BREW_ID: 6 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 63, BR_NAME : 'ROUNDHEAD', B_TYPE : 'RED ALE', BREW_ID: 6 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 64, BR_NAME : 'CHO-SEN', B_TYPE : 'GOLDEN ALE', BREW_ID: 6 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 71, BR_NAME : 'FIREMANS NO. 4', B_TYPE : 'BLONDE ALE', BREW_ID: 7 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 72, BR_NAME : 'FULL MOON', B_TYPE : 'RYE IPA', BREW_ID: 7 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 73, BR_NAME : 'DEVILS BACKBONE', B_TYPE : 'BELGIAN-STYLE TRIPEL', BREW_ID: 7 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 74, BR_NAME : 'SISYPHUS', B_TYPE : 'BARLEYWINE ALE', BREW_ID: 7 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 81, BR_NAME : 'TWISTED X', B_TYPE : 'PREMIUM LAGER', BREW_ID: 8 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 82, BR_NAME : 'COW CREEK', B_TYPE : 'VIENNA STYLE LAGER', BREW_ID: 8 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 83, BR_NAME : 'FUEGO', B_TYPE : 'JALAPENO PILSNER', BREW_ID: 8 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 84, BR_NAME : 'CHUPAHOPRA', B_TYPE : 'IPA', BREW_ID: 8 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 85, BR_NAME : 'SENOR VIEJO', B_TYPE : 'IMPERIAL BLACK LAGER', BREW_ID: 8 })"

Neo4j on conn "CREATE (:on_tap { BEER_ID : 91, BR_NAME : 'HIJACK', B_TYPE : 'UNTRADITIONAL CREAM ALE', BREW_ID: 9 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 92, BR_NAME : 'IPA', B_TYPE : 'IPA', BREW_ID: 9 })"
Neo4j on conn "CREATE (:on_tap { BEER_ID : 93, BR_NAME : 'BUGSYS', B_TYPE : 'FIRE BRUSH AMBER', BREW_ID: 9 })"



Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 1 AND b.brew_id = 1 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 2 AND b.brew_id = 2 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 3 AND b.brew_id = 3 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 4 AND b.brew_id = 4 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 5 AND b.brew_id = 5 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 6 AND b.brew_id = 6 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 7 AND b.brew_id = 7 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 8 AND b.brew_id = 8 CREATE (a)<-[:brew_co]-(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 9 AND b.brew_id = 9 CREATE (a)<-[:brew_co]-(b)"

Neo4j on conn "MATCH(a:brew_co)<-[:brew_co]-(b:on_tap) RETURN b, a.b_name, a.yr_rnd, a.rotating, a.rating"

Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 1 AND b.brew_id = 1 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 2 AND b.brew_id = 2 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 3 AND b.brew_id = 3 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 4 AND b.brew_id = 4 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 5 AND b.brew_id = 5 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 6 AND b.brew_id = 6 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 7 AND b.brew_id = 7 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 8 AND b.brew_id = 8 CREATE (a)-[:on_tap]->(b)"
Neo4j on conn "MATCH (a:brew_co),(b:on_tap) WHERE a.brewery_id = 9 AND b.brew_id = 9 CREATE (a)-[:on_tap]->(b)"

Neo4j on conn "MATCH(a:brew_co)-[:on_tap]->(b:on_tap)  RETURN a.b_name, a.rating, a.yr_rnd, a.rotating, b.br_name, b.b_type"