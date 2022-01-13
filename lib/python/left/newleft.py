#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler


# In[2]:


hr = pd.read_csv('HR.csv')


# In[3]:


cat_vars=['Department','salary']
for var in cat_vars:
    cat_list='var'+'_'+var
    print(cat_list)
    cat_list = pd.get_dummies(hr[var], prefix=var)
    print(cat_list)
    hr1=hr.join(cat_list)
    hr=hr1
    hr.head()


# In[4]:


hr.drop(hr.columns[[8,9]], axis=1, inplace=True)
hr.columns.values


# In[5]:


cols=['satisfaction_level', 'last_evaluation', 'number_project',
       'average_montly_hours', 'time_spend_company', 'Work_accident',
      'promotion_last_5years', 'Department_IT',
       'Department_RandD', 'Department_accounting', 'Department_hr',
       'Department_management', 'Department_marketing',
       'Department_product_mng', 'Department_sales', 'Department_support',
       'Department_technical', 'salary_high', 'salary_low',
       'salary_medium'] 
X=hr[cols]
y=hr['left']


# In[7]:


from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)


# In[8]:


RFclassifier = RandomForestClassifier(n_estimators = 100, random_state = 0)
RFclassifier.fit(X_train, y_train)
print(RFclassifier.score(X_test, y_test))


# In[23]:


import pickle

# Save the trained model as a pickle string.
saved_model = pickle.dumps(RFclassifier)

# Load the pickled model
RFclassifier_from_pickle = pickle.loads(saved_model)

# Use the loaded pickled model to make predictions
RFclassifier_from_pickle.predict(X_test)


# In[24]:


#r=[0.98,0.9,7,5,5,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0]
r1=[0.38,0.53,2,157,3,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0]
r1=np.array(r1).reshape((1,-1))
print(RFclassifier.predict(r1))

