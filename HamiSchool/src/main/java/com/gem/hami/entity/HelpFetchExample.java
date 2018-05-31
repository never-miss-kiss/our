package com.gem.hami.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class HelpFetchExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HelpFetchExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andHelpFetchIdIsNull() {
            addCriterion("help_fetch_id is null");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdIsNotNull() {
            addCriterion("help_fetch_id is not null");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdEqualTo(Integer value) {
            addCriterion("help_fetch_id =", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdNotEqualTo(Integer value) {
            addCriterion("help_fetch_id <>", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdGreaterThan(Integer value) {
            addCriterion("help_fetch_id >", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("help_fetch_id >=", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdLessThan(Integer value) {
            addCriterion("help_fetch_id <", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdLessThanOrEqualTo(Integer value) {
            addCriterion("help_fetch_id <=", value, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdIn(List<Integer> values) {
            addCriterion("help_fetch_id in", values, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdNotIn(List<Integer> values) {
            addCriterion("help_fetch_id not in", values, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdBetween(Integer value1, Integer value2) {
            addCriterion("help_fetch_id between", value1, value2, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andHelpFetchIdNotBetween(Integer value1, Integer value2) {
            addCriterion("help_fetch_id not between", value1, value2, "helpFetchId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andFetchAddressIsNull() {
            addCriterion("fetch_address is null");
            return (Criteria) this;
        }

        public Criteria andFetchAddressIsNotNull() {
            addCriterion("fetch_address is not null");
            return (Criteria) this;
        }

        public Criteria andFetchAddressEqualTo(String value) {
            addCriterion("fetch_address =", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressNotEqualTo(String value) {
            addCriterion("fetch_address <>", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressGreaterThan(String value) {
            addCriterion("fetch_address >", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressGreaterThanOrEqualTo(String value) {
            addCriterion("fetch_address >=", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressLessThan(String value) {
            addCriterion("fetch_address <", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressLessThanOrEqualTo(String value) {
            addCriterion("fetch_address <=", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressLike(String value) {
            addCriterion("fetch_address like", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressNotLike(String value) {
            addCriterion("fetch_address not like", value, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressIn(List<String> values) {
            addCriterion("fetch_address in", values, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressNotIn(List<String> values) {
            addCriterion("fetch_address not in", values, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressBetween(String value1, String value2) {
            addCriterion("fetch_address between", value1, value2, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andFetchAddressNotBetween(String value1, String value2) {
            addCriterion("fetch_address not between", value1, value2, "fetchAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressIsNull() {
            addCriterion("remark_ship_address is null");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressIsNotNull() {
            addCriterion("remark_ship_address is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressEqualTo(String value) {
            addCriterion("remark_ship_address =", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressNotEqualTo(String value) {
            addCriterion("remark_ship_address <>", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressGreaterThan(String value) {
            addCriterion("remark_ship_address >", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressGreaterThanOrEqualTo(String value) {
            addCriterion("remark_ship_address >=", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressLessThan(String value) {
            addCriterion("remark_ship_address <", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressLessThanOrEqualTo(String value) {
            addCriterion("remark_ship_address <=", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressLike(String value) {
            addCriterion("remark_ship_address like", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressNotLike(String value) {
            addCriterion("remark_ship_address not like", value, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressIn(List<String> values) {
            addCriterion("remark_ship_address in", values, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressNotIn(List<String> values) {
            addCriterion("remark_ship_address not in", values, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressBetween(String value1, String value2) {
            addCriterion("remark_ship_address between", value1, value2, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkShipAddressNotBetween(String value1, String value2) {
            addCriterion("remark_ship_address not between", value1, value2, "remarkShipAddress");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneIsNull() {
            addCriterion("fetch_phone is null");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneIsNotNull() {
            addCriterion("fetch_phone is not null");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneEqualTo(String value) {
            addCriterion("fetch_phone =", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneNotEqualTo(String value) {
            addCriterion("fetch_phone <>", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneGreaterThan(String value) {
            addCriterion("fetch_phone >", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("fetch_phone >=", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneLessThan(String value) {
            addCriterion("fetch_phone <", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneLessThanOrEqualTo(String value) {
            addCriterion("fetch_phone <=", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneLike(String value) {
            addCriterion("fetch_phone like", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneNotLike(String value) {
            addCriterion("fetch_phone not like", value, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneIn(List<String> values) {
            addCriterion("fetch_phone in", values, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneNotIn(List<String> values) {
            addCriterion("fetch_phone not in", values, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneBetween(String value1, String value2) {
            addCriterion("fetch_phone between", value1, value2, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andFetchPhoneNotBetween(String value1, String value2) {
            addCriterion("fetch_phone not between", value1, value2, "fetchPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIsNull() {
            addCriterion("receipt_address is null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIsNotNull() {
            addCriterion("receipt_address is not null");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressEqualTo(String value) {
            addCriterion("receipt_address =", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotEqualTo(String value) {
            addCriterion("receipt_address <>", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressGreaterThan(String value) {
            addCriterion("receipt_address >", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressGreaterThanOrEqualTo(String value) {
            addCriterion("receipt_address >=", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLessThan(String value) {
            addCriterion("receipt_address <", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLessThanOrEqualTo(String value) {
            addCriterion("receipt_address <=", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressLike(String value) {
            addCriterion("receipt_address like", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotLike(String value) {
            addCriterion("receipt_address not like", value, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressIn(List<String> values) {
            addCriterion("receipt_address in", values, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotIn(List<String> values) {
            addCriterion("receipt_address not in", values, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressBetween(String value1, String value2) {
            addCriterion("receipt_address between", value1, value2, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptAddressNotBetween(String value1, String value2) {
            addCriterion("receipt_address not between", value1, value2, "receiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressIsNull() {
            addCriterion("remark_receipt_address is null");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressIsNotNull() {
            addCriterion("remark_receipt_address is not null");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressEqualTo(String value) {
            addCriterion("remark_receipt_address =", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressNotEqualTo(String value) {
            addCriterion("remark_receipt_address <>", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressGreaterThan(String value) {
            addCriterion("remark_receipt_address >", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressGreaterThanOrEqualTo(String value) {
            addCriterion("remark_receipt_address >=", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressLessThan(String value) {
            addCriterion("remark_receipt_address <", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressLessThanOrEqualTo(String value) {
            addCriterion("remark_receipt_address <=", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressLike(String value) {
            addCriterion("remark_receipt_address like", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressNotLike(String value) {
            addCriterion("remark_receipt_address not like", value, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressIn(List<String> values) {
            addCriterion("remark_receipt_address in", values, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressNotIn(List<String> values) {
            addCriterion("remark_receipt_address not in", values, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressBetween(String value1, String value2) {
            addCriterion("remark_receipt_address between", value1, value2, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andRemarkReceiptAddressNotBetween(String value1, String value2) {
            addCriterion("remark_receipt_address not between", value1, value2, "remarkReceiptAddress");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneIsNull() {
            addCriterion("receipt_phone is null");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneIsNotNull() {
            addCriterion("receipt_phone is not null");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneEqualTo(String value) {
            addCriterion("receipt_phone =", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneNotEqualTo(String value) {
            addCriterion("receipt_phone <>", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneGreaterThan(String value) {
            addCriterion("receipt_phone >", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("receipt_phone >=", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneLessThan(String value) {
            addCriterion("receipt_phone <", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneLessThanOrEqualTo(String value) {
            addCriterion("receipt_phone <=", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneLike(String value) {
            addCriterion("receipt_phone like", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneNotLike(String value) {
            addCriterion("receipt_phone not like", value, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneIn(List<String> values) {
            addCriterion("receipt_phone in", values, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneNotIn(List<String> values) {
            addCriterion("receipt_phone not in", values, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneBetween(String value1, String value2) {
            addCriterion("receipt_phone between", value1, value2, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andReceiptPhoneNotBetween(String value1, String value2) {
            addCriterion("receipt_phone not between", value1, value2, "receiptPhone");
            return (Criteria) this;
        }

        public Criteria andFetchInformationIsNull() {
            addCriterion("fetch_information is null");
            return (Criteria) this;
        }

        public Criteria andFetchInformationIsNotNull() {
            addCriterion("fetch_information is not null");
            return (Criteria) this;
        }

        public Criteria andFetchInformationEqualTo(String value) {
            addCriterion("fetch_information =", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationNotEqualTo(String value) {
            addCriterion("fetch_information <>", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationGreaterThan(String value) {
            addCriterion("fetch_information >", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationGreaterThanOrEqualTo(String value) {
            addCriterion("fetch_information >=", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationLessThan(String value) {
            addCriterion("fetch_information <", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationLessThanOrEqualTo(String value) {
            addCriterion("fetch_information <=", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationLike(String value) {
            addCriterion("fetch_information like", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationNotLike(String value) {
            addCriterion("fetch_information not like", value, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationIn(List<String> values) {
            addCriterion("fetch_information in", values, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationNotIn(List<String> values) {
            addCriterion("fetch_information not in", values, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationBetween(String value1, String value2) {
            addCriterion("fetch_information between", value1, value2, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchInformationNotBetween(String value1, String value2) {
            addCriterion("fetch_information not between", value1, value2, "fetchInformation");
            return (Criteria) this;
        }

        public Criteria andFetchTimeIsNull() {
            addCriterion("fetch_time is null");
            return (Criteria) this;
        }

        public Criteria andFetchTimeIsNotNull() {
            addCriterion("fetch_time is not null");
            return (Criteria) this;
        }

        public Criteria andFetchTimeEqualTo(String value) {
            addCriterion("fetch_time =", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeNotEqualTo(String value) {
            addCriterion("fetch_time <>", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeGreaterThan(String value) {
            addCriterion("fetch_time >", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeGreaterThanOrEqualTo(String value) {
            addCriterion("fetch_time >=", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeLessThan(String value) {
            addCriterion("fetch_time <", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeLessThanOrEqualTo(String value) {
            addCriterion("fetch_time <=", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeLike(String value) {
            addCriterion("fetch_time like", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeNotLike(String value) {
            addCriterion("fetch_time not like", value, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeIn(List<String> values) {
            addCriterion("fetch_time in", values, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeNotIn(List<String> values) {
            addCriterion("fetch_time not in", values, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeBetween(String value1, String value2) {
            addCriterion("fetch_time between", value1, value2, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andFetchTimeNotBetween(String value1, String value2) {
            addCriterion("fetch_time not between", value1, value2, "fetchTime");
            return (Criteria) this;
        }

        public Criteria andDistanceIsNull() {
            addCriterion("distance is null");
            return (Criteria) this;
        }

        public Criteria andDistanceIsNotNull() {
            addCriterion("distance is not null");
            return (Criteria) this;
        }

        public Criteria andDistanceEqualTo(Float value) {
            addCriterion("distance =", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotEqualTo(Float value) {
            addCriterion("distance <>", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceGreaterThan(Float value) {
            addCriterion("distance >", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceGreaterThanOrEqualTo(Float value) {
            addCriterion("distance >=", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceLessThan(Float value) {
            addCriterion("distance <", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceLessThanOrEqualTo(Float value) {
            addCriterion("distance <=", value, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceIn(List<Float> values) {
            addCriterion("distance in", values, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotIn(List<Float> values) {
            addCriterion("distance not in", values, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceBetween(Float value1, Float value2) {
            addCriterion("distance between", value1, value2, "distance");
            return (Criteria) this;
        }

        public Criteria andDistanceNotBetween(Float value1, Float value2) {
            addCriterion("distance not between", value1, value2, "distance");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIsNull() {
            addCriterion("recommended_price is null");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIsNotNull() {
            addCriterion("recommended_price is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceEqualTo(Float value) {
            addCriterion("recommended_price =", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotEqualTo(Float value) {
            addCriterion("recommended_price <>", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceGreaterThan(Float value) {
            addCriterion("recommended_price >", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("recommended_price >=", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceLessThan(Float value) {
            addCriterion("recommended_price <", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceLessThanOrEqualTo(Float value) {
            addCriterion("recommended_price <=", value, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceIn(List<Float> values) {
            addCriterion("recommended_price in", values, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotIn(List<Float> values) {
            addCriterion("recommended_price not in", values, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceBetween(Float value1, Float value2) {
            addCriterion("recommended_price between", value1, value2, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andRecommendedPriceNotBetween(Float value1, Float value2) {
            addCriterion("recommended_price not between", value1, value2, "recommendedPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIsNull() {
            addCriterion("person_price is null");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIsNotNull() {
            addCriterion("person_price is not null");
            return (Criteria) this;
        }

        public Criteria andPersonPriceEqualTo(Float value) {
            addCriterion("person_price =", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotEqualTo(Float value) {
            addCriterion("person_price <>", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceGreaterThan(Float value) {
            addCriterion("person_price >", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("person_price >=", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceLessThan(Float value) {
            addCriterion("person_price <", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceLessThanOrEqualTo(Float value) {
            addCriterion("person_price <=", value, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceIn(List<Float> values) {
            addCriterion("person_price in", values, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotIn(List<Float> values) {
            addCriterion("person_price not in", values, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceBetween(Float value1, Float value2) {
            addCriterion("person_price between", value1, value2, "personPrice");
            return (Criteria) this;
        }

        public Criteria andPersonPriceNotBetween(Float value1, Float value2) {
            addCriterion("person_price not between", value1, value2, "personPrice");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}