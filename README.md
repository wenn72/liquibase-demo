本项目使用liquibase完成数据库迁移。结合xml + SQL格式变更脚本，给出了建表、插入列、插入数据、更新数据的使用样例。

# 1. 什么是liquibase
https://docs.liquibase.com/concepts/introduction-to-liquibase.html    
Liquibase 是一种数据库架构变更管理解决方案，使您能够更快、更安全地修改和发布从开发到生产的数据库变更。

# 2. 为什么要使用liquibase
个人理解，当业务需要部署在多套生产环境中，使用liquibase，存在以下好处:    
· 保证数据库变更的一致性：迁移脚本一般要随代码一同归档，软件版本对应的数据库的更新版本是一致的     
· 自动化完成数据库变更：不需要变更人员，在多个生产环境上重复提单，降低人操作失误导致的变更风险    

# 3. 项目涉及的主要特性
· includeAll tag    
https://docs.liquibase.com/change-types/includeall.html    
· preconditions tag   
https://docs.liquibase.com/concepts/changelogs/preconditions.html    
· runOnChange attribute     
https://docs.liquibase.com/concepts/changelogs/attributes/runonchange.html    
· substituting properties    
https://docs.liquibase.com/concepts/changelogs/property-substitution.html    