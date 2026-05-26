import streamlit as st
st.title("Sales Dashboard- Exploratory Data Analysis")
col1,col2,col3 = st.columns(3)
with col1:
    st.metric(label='Total Sales',value=10000,delta='-18%')
with col2:
    st.metric(label='Avg Order Value',value=100000,delta='-1%')
with col3:
    st.metric(label='Total Profit',value=1000,delta='+2%')