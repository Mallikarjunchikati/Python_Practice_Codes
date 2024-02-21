# Databricks notebook source
dbutils.fs.ls("/mnt/set1files")

# COMMAND ----------

from pyspark.sql.functions import *
from pyspark.sql.types import *

# COMMAND ----------

df1 = spark.read.format("json").load("dbfs:/mnt/set1files/grades.json")
display(df1)

# COMMAND ----------

df2 = df1.select(
        col("_id.$oid").alias("Id"),
        col("class_id.$numberInt").alias("Class_Id"),
        col("scores.score.$numberDouble").getItem(0).alias("Scores_0"),
        col("scores.type").getItem(0).alias("Type_0"),
        col("scores.score.$numberDouble").getItem(1).alias("Scores_1"),
        col("scores.type").getItem(1).alias("Type_1"),
        col("scores.score.$numberDouble").getItem(2).alias("Scores_2"),
        col("scores.type").getItem(2).alias("Type_2"),
        col("scores.score.$numberDouble").getItem(3).alias("Scores_3"),
        col("scores.type").getItem(3).alias("Type_3"),
        col("scores.score.$numberDouble").getItem(4).alias("Scores_4"),
        col("scores.type").getItem(4).alias("Type_4"),
        col("student_id.$numberInt").alias("student_id")
    )


# COMMAND ----------

display(df2)

# COMMAND ----------

from pyspark.sql.window import WindowSpec,Window
WindowSpec = Window.orderBy(lit(1))
df2=df2.withColumn("Id",coalesce(row_number().over(WindowSpec)))
display(df2)

# COMMAND ----------

df2 = df2.select("Id","Class_Id","student_id","Scores_0","Type_0","Scores_1","Type_1","Scores_2","Type_2","Scores_3","Type_3")
display(df2)

# COMMAND ----------

df4 = spark.read.format("json").load("dbfs:/mnt/set1files/companies.json")
display(df4)

# COMMAND ----------

from pyspark.sql.functions import *
from pyspark.sql.window import Window,WindowSpec

# COMMAND ----------

df5 = df4.select(
col("_id.$oid").alias("Id"),
col("acquisition.acquired_day.$numberInt").alias("Company_Acquired_day"),
col("acquisition.acquired_month.$numberInt").alias("Company_Acquired_Month"),
col("acquisition.acquired_year.$numberInt").alias("Company_Acquired_Year"),
col("acquisition.acquiring_company.name").alias("Acqured_Company_Name"),
col("acquisition.acquiring_company.permalink").alias("Acqured_Company.Permalink"),
col("acquisition.price_amount.$numberInt").alias("Acqured_price_amount"),
col("acquisition.price_amount.$numberLong").alias("Acqured_price_amount_decimal"),
col("acquisition.price_currency_code").alias("Acqured_Curreny_Price"),
col("acquisition.source_description").alias("Acqured_Source_description"),
col("acquisition.source_url").alias("Acqured_URL_Source"),
col("acquisition.term_code").alias("Acqured_Term_Code"),
col("acquisitions.acquired_day.$numberInt").alias("Company_Acquitions_days"),
col("acquisitions.acquired_month.$numberInt").alias("Company_Acquitions_Month"),
col("acquisitions.acquired_year.$numberInt").alias("Company_Acquitions_Year"),
col("acquisitions.company.name").alias("Acqured_Companies_Name"),
col("acquisitions.company.permalink").alias("Acqured_Companies_permalink"),
col("acquisitions.price_amount.$numberDouble").alias("Acquritions_Double_Amount"),
col("acquisitions.price_amount.$numberInt").alias("Acquritions_single_Amount"),
col("acquisitions.price_amount.$numberLong").alias("Acquritions_Long_Amount"),
col("acquisitions.price_currency_code").alias("Acquisitions.price_currency_code"),
col("acquisitions.source_description").alias("Acquisitions.source_description"),
col("acquisitions.source_url").alias("Acquisitions.source_url"),
col("acquisitions.term_code").alias("Acquisitions.term_code"),
col("alias_list").alias("Alias_List"),
col("blog_feed_url").alias("blog_feed_url"),
col("blog_url").alias("blog_url"),
col("category_code").alias("category_code"),
col("competitions.competitor.name").alias("competitions_competitor_name"),
col("competitions.competitor.permalink").alias("competitions_competitor_permalink"),
col("created_at").alias("created_at"),
col("crunchbase_url").alias("crunchbase_url"),
col("deadpooled_day.$numberInt").alias("Deadpooled_day_numberInt"),
col("deadpooled_url").alias("deadpooled_url"),
col("deadpooled_year.$numberInt").alias("deadpooled_year_numberInt"),
col("description").alias("description"),
col("email_address").alias("email_address"),
col("external_links.external_url").alias("external_links and external_url"),
col("external_links.title").alias("external_links_title"),
col("founded_day.$numberInt").alias("founded_day_numberInt"),
col("founded_month.$numberInt").alias("founded_month_numberInt"),
col("founded_year.$numberInt").alias("founded_year_numberInt"),
col("funding_rounds.funded_day.$numberInt").alias("funding_rounds_funded_day_numberInt"),
col("funding_rounds.funded_month.$numberInt").alias("funding_rounds_funded_month_numberInt"),
col("funding_rounds.funded_year.$numberInt").alias("funding_rounds_funded_year_numberInt"),
col("funding_rounds.id.$numberInt").alias("funding_rounds_id_numberInt"),
col("funding_rounds.investments.company.name").alias("funding_rounds_investments_company_name"),
col("funding_rounds.investments.company.permalink").alias("funding_rounds_investments_company_permalink"),
col("funding_rounds.investments.financial_org.name").alias("funding_rounds_investments_financial_org_name"),
col("funding_rounds.investments.financial_org.permalink").alias("funding_rounds_investments_financial_org_permalink"),
col("funding_rounds.investments.person.first_name").alias("funding_rounds_investments_person_first_name"),
col("funding_rounds.investments.person.last_name").alias("funding_rounds_investments_person_lastname"),
col("funding_rounds.investments.person.permalink").alias("funding_rounds_investments_person_permalink"),
col("funding_rounds.raised_amount.$numberInt").alias("funding_rounds_raised_amount_numberInt"),
col("funding_rounds.raised_currency_code").alias("funding_rounds_raised_currency_code"),
col("funding_rounds.round_code").alias("funding_rounds_round_code"),
col("funding_rounds.source_description").alias("funding_rounds_source_description"),
col("funding_rounds.source_url").alias("funding_rounds_source_url"),
col("homepage_url").alias("homepage_url"),
col("image.attribution").alias("image_attribution"),
col("image.available_sizes").alias("image_available_sizes"),
col("investments.funding_round.company.name").alias("investments_funding_round_company.name"),
col("investments.funding_round.company.permalink").alias("investments_funding_round_company_permalink"),
col("investments.funding_round.funded_day.$numberInt").alias("investments_funding_round_funded_day_numberIn"),
col("investments.funding_round.funded_month.$numberInt").alias("investments_funding_round_funded_month_numberInt"),
col("investments.funding_round.funded_year.$numberInt").alias("investments_funding_round_funded_year_numberInt"),
col("investments.funding_round.raised_amount.$numberInt").alias("investments_funding_round_raised_amount_numberInt"),
col("investments.funding_round.raised_amount.$numberLong").alias("investments_funding_round_raised_amount_numberLong"),
col("investments.funding_round.raised_currency_code").alias("investments_funding_round_raised_currency_code"),
col("investments.funding_round.round_code").alias("investments_funding_round_round_code"),
col("investments.funding_round.source_description").alias("investments_funding_round_source_description"),
col("investments.funding_round.source_url").alias("investments_funding_round_source_url"),
col("ipo.pub_day.$numberInt").alias("ipo_pub_day_numberInt"),
col("ipo.pub_month.$numberInt").alias("ipo_pub_month_numberInt"),
col("ipo.pub_year.$numberInt").alias("ipo_pub_year_numberInt"),
col("ipo.stock_symbol").alias("ipo_stock_symbol"),
col("ipo.valuation_amount.$numberInt").alias("ipo_valuation_amount_numberInt"),
col("ipo.valuation_amount.$numberLong").alias("ipo_valuation_amount_numberLong"),
col("ipo.valuation_currency_code").alias("ipo_valuation_currency_code"),
col("milestones.description").alias("milestones_description"),
col("milestones.id.$numberint").alias("milestones_id_numberint"),
col("milestones.source_description").alias("milestones_source_description"),
col("milestones.source_text").alias("milestones_source_text"),
col("milestones.source_url").alias("milestones_source_url"),
col("milestones.stoneable.name").alias("milestones_stoneable_name"),
col("milestones.stoneable.permalink").alias("milestones_stoneable_permalink"),
col("milestones.stoneable_type").alias("milestones_stoneable_type"),
col("milestones.stoned_acquirer").alias("milestones_stoned_acquirer"),
col("milestones.stoned_day.$numberInt").alias("milestones_stoned_day_numberInt"),
col("milestones.stoned_month.$numberInt").alias("milestones_stoned_month_numberInt"),
col("milestones.stoned_value").alias("milestones_stoned_value"),
col("milestones.stoned_value_type").alias("milestones_stoned_value_type"),
col("milestones.stoned_year.$numberInt").alias("milestones_stoned_year_numberInt"),
col("name").alias("name"),
col("number_of_employees.$numberInt").alias("number_of_employees_numberInt"),
col("offices.address1").alias("offices_address1"),
col("offices.address2").alias("offices_address2"),
col("offices.city").alias("offices_city"),
col("offices.country_code").alias("offices_country_code"),
col("offices.description").alias("offices_description"),
col("offices.latitude.$numberDouble").alias("offices_latitude_numberDouble"),
col("offices.longitude.$numberDouble").alias("offices_longitude_numberDouble"),
col("offices.state_code").alias("offices_state_code"),
col("offices.zip_code").alias("offices_zip_code"),
col("overview").alias("overview"),
col("partners.homepage_url").alias("partners_homepage_url"),
col("partners.link_1_name").alias("partners_link_1_name"),
col("partners.link_1_url").alias("partners_link_1_url"),
col("partners.link_2_name").alias("partners_link_2_name"),
col("partners.link_2_url").alias("partners_link_2_url"),
col("partners.link_3_name").alias("partners_link_3_name"),
col("partners.link_3_url").alias("partners_link_3_url"),
col("partners.partner_name").alias("partners_partner_name"),
col("permalink").alias("permalink"),
col("phone_number").alias("phone_number"),
col("products.name").alias("products_name"),
col("products.permalink").alias("products_permalink"),
col("providerships.is_past").alias("providerships_is_past"),
col("providerships.provider.name").alias("providerships_provider_name"),
col("providerships.provider.permalink").alias("providerships_provider_permalink"),
col("providerships.title").alias("providerships_title"),
col("relationships.is_past").alias("relationships_is_past"),
col("relationships.person.first_name").alias("relationships_person_first_name"),
col("relationships.person.last_name").alias("relationships_person_last_name"),
col("relationships.person.permalink").alias("relationships_person_permalink"),
col("relationships.title").alias("relationships_title"),
col("screenshots.attribution").alias("screenshots_attribution"),
col("screenshots.available_sizes").alias("screenshots_available_sizes"),
col("tag_list").alias("tag_list"),
col("twitter_username").alias("twitter_username"),
col("updated_at").alias("updated_at"),
col("video_embeds.description").alias("video_embeds_description"),
col("video_embeds.embed_code").alias("video_embeds_embed_code")                                                   
)
df5.drop("Id")
display(df5)

# COMMAND ----------

WindowSpec = Window.orderBy(coalesce(lit(1)))
df5 = df5.withColumn("Id",row_number().over(WindowSpec))

# COMMAND ----------

display(df5)

# COMMAND ----------

df5.columns

# COMMAND ----------

display(
    df5.groupBy("Acqured_Company_Name").\
        agg(count(lit(1)))
)

# COMMAND ----------

display(
    df5.groupBy("Acqured_Company_Name").\
        agg(count("Acqured_price_amount"))
) 

# COMMAND ----------

df6 = df2.join(df5,
               on=df2["Id"] == df5["Id"],
               how = "inner"
)
display(df6)

# COMMAND ----------

display(
    df6.select("Company_Acquired_Year").distinct()
)

# COMMAND ----------

df6.write.partitionBy('Company_Acquired_Year').mode('append').csv('dbfs:/mnt/set2files/Data')
