# Code-standardisation
 Standardising shared functions in NCD-RisC codes

## Functions that are shared across RFs for data processing

### Individual level

#### Extraction

#### Merging

#### Subsetting

#### Cleaning: by RF
* clean_data
* print_cleaned
* clean_single_psu_ssa
* generate_fasting_status

##### RF specific cleaning
* get_bmi_prev
* get_height_prev
* define_prev  
take a set of booleans as input and generate dummy including missing data
* clean_multi_chol  
accounting for multivariate constraints for cholesterol
* generate_dm_medication
* calculate_average_bp

#### Summarising: by RF
* generate_age_group
* clean_svydesign
* make_svydesign
* get_summary
* get_summary_parallel

#### Metadata: by RF
* find_number

### Summary level

#### Extraction: by RF
* check_sheets
* check_age_groups

#### Metadata: by RF

### Combined data

#### Merging summary: by RF

#### Merging metadata: by RF

## Functions that are shared across RFs for postprocessing and plotting

### Postprocessing
* read_country_list  

Aggregating age-specific results into age-standardised or crude results
by country or by groups of countries,
including for region, super-region, WHO region, WB group, world

#### Male and female separately
* asd_by_country
* asd_by_group  
* crude_by_country
* crude_by_group  

#### Male and female combined
* asd_by_country_bothsex
* asd_by_group_bothsex  
* crude_by_country_bothsex
* crude_by_group_bothsex  

### Plotting
* make_maps
* colour_scales
* regional_colour_palette
