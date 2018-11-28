package com.wj.bean.model;

import java.util.ArrayList;
import java.util.List;

public class SysMenuExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysMenuExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andMenuNameIsNull() {
            addCriterion("MENU_NAME is null");
            return (Criteria) this;
        }

        public Criteria andMenuNameIsNotNull() {
            addCriterion("MENU_NAME is not null");
            return (Criteria) this;
        }

        public Criteria andMenuNameEqualTo(String value) {
            addCriterion("MENU_NAME =", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameNotEqualTo(String value) {
            addCriterion("MENU_NAME <>", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameGreaterThan(String value) {
            addCriterion("MENU_NAME >", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameGreaterThanOrEqualTo(String value) {
            addCriterion("MENU_NAME >=", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameLessThan(String value) {
            addCriterion("MENU_NAME <", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameLessThanOrEqualTo(String value) {
            addCriterion("MENU_NAME <=", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameLike(String value) {
            addCriterion("MENU_NAME like", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameNotLike(String value) {
            addCriterion("MENU_NAME not like", value, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameIn(List<String> values) {
            addCriterion("MENU_NAME in", values, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameNotIn(List<String> values) {
            addCriterion("MENU_NAME not in", values, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameBetween(String value1, String value2) {
            addCriterion("MENU_NAME between", value1, value2, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuNameNotBetween(String value1, String value2) {
            addCriterion("MENU_NAME not between", value1, value2, "menuName");
            return (Criteria) this;
        }

        public Criteria andMenuPathIsNull() {
            addCriterion("MENU_PATH is null");
            return (Criteria) this;
        }

        public Criteria andMenuPathIsNotNull() {
            addCriterion("MENU_PATH is not null");
            return (Criteria) this;
        }

        public Criteria andMenuPathEqualTo(String value) {
            addCriterion("MENU_PATH =", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathNotEqualTo(String value) {
            addCriterion("MENU_PATH <>", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathGreaterThan(String value) {
            addCriterion("MENU_PATH >", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathGreaterThanOrEqualTo(String value) {
            addCriterion("MENU_PATH >=", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathLessThan(String value) {
            addCriterion("MENU_PATH <", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathLessThanOrEqualTo(String value) {
            addCriterion("MENU_PATH <=", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathLike(String value) {
            addCriterion("MENU_PATH like", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathNotLike(String value) {
            addCriterion("MENU_PATH not like", value, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathIn(List<String> values) {
            addCriterion("MENU_PATH in", values, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathNotIn(List<String> values) {
            addCriterion("MENU_PATH not in", values, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathBetween(String value1, String value2) {
            addCriterion("MENU_PATH between", value1, value2, "menuPath");
            return (Criteria) this;
        }

        public Criteria andMenuPathNotBetween(String value1, String value2) {
            addCriterion("MENU_PATH not between", value1, value2, "menuPath");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNull() {
            addCriterion("PARENT_ID is null");
            return (Criteria) this;
        }

        public Criteria andParentIdIsNotNull() {
            addCriterion("PARENT_ID is not null");
            return (Criteria) this;
        }

        public Criteria andParentIdEqualTo(Integer value) {
            addCriterion("PARENT_ID =", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotEqualTo(Integer value) {
            addCriterion("PARENT_ID <>", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThan(Integer value) {
            addCriterion("PARENT_ID >", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("PARENT_ID >=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThan(Integer value) {
            addCriterion("PARENT_ID <", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdLessThanOrEqualTo(Integer value) {
            addCriterion("PARENT_ID <=", value, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdIn(List<Integer> values) {
            addCriterion("PARENT_ID in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotIn(List<Integer> values) {
            addCriterion("PARENT_ID not in", values, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdBetween(Integer value1, Integer value2) {
            addCriterion("PARENT_ID between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andParentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("PARENT_ID not between", value1, value2, "parentId");
            return (Criteria) this;
        }

        public Criteria andMenuSortIsNull() {
            addCriterion("MENU_SORT is null");
            return (Criteria) this;
        }

        public Criteria andMenuSortIsNotNull() {
            addCriterion("MENU_SORT is not null");
            return (Criteria) this;
        }

        public Criteria andMenuSortEqualTo(Integer value) {
            addCriterion("MENU_SORT =", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortNotEqualTo(Integer value) {
            addCriterion("MENU_SORT <>", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortGreaterThan(Integer value) {
            addCriterion("MENU_SORT >", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortGreaterThanOrEqualTo(Integer value) {
            addCriterion("MENU_SORT >=", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortLessThan(Integer value) {
            addCriterion("MENU_SORT <", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortLessThanOrEqualTo(Integer value) {
            addCriterion("MENU_SORT <=", value, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortIn(List<Integer> values) {
            addCriterion("MENU_SORT in", values, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortNotIn(List<Integer> values) {
            addCriterion("MENU_SORT not in", values, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortBetween(Integer value1, Integer value2) {
            addCriterion("MENU_SORT between", value1, value2, "menuSort");
            return (Criteria) this;
        }

        public Criteria andMenuSortNotBetween(Integer value1, Integer value2) {
            addCriterion("MENU_SORT not between", value1, value2, "menuSort");
            return (Criteria) this;
        }

        public Criteria andCssClassIsNull() {
            addCriterion("CSS_CLASS is null");
            return (Criteria) this;
        }

        public Criteria andCssClassIsNotNull() {
            addCriterion("CSS_CLASS is not null");
            return (Criteria) this;
        }

        public Criteria andCssClassEqualTo(String value) {
            addCriterion("CSS_CLASS =", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassNotEqualTo(String value) {
            addCriterion("CSS_CLASS <>", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassGreaterThan(String value) {
            addCriterion("CSS_CLASS >", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassGreaterThanOrEqualTo(String value) {
            addCriterion("CSS_CLASS >=", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassLessThan(String value) {
            addCriterion("CSS_CLASS <", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassLessThanOrEqualTo(String value) {
            addCriterion("CSS_CLASS <=", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassLike(String value) {
            addCriterion("CSS_CLASS like", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassNotLike(String value) {
            addCriterion("CSS_CLASS not like", value, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassIn(List<String> values) {
            addCriterion("CSS_CLASS in", values, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassNotIn(List<String> values) {
            addCriterion("CSS_CLASS not in", values, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassBetween(String value1, String value2) {
            addCriterion("CSS_CLASS between", value1, value2, "cssClass");
            return (Criteria) this;
        }

        public Criteria andCssClassNotBetween(String value1, String value2) {
            addCriterion("CSS_CLASS not between", value1, value2, "cssClass");
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