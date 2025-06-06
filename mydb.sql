PGDMP      5    	            }            CodeGenerator    16.3    16.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18974    CodeGenerator    DATABASE     �   CREATE DATABASE "CodeGenerator" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "CodeGenerator";
                postgres    false            �            1259    18975    act_ge_bytearray    TABLE     �  CREATE TABLE public.act_ge_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    deployment_id_ character varying(64),
    bytes_ bytea,
    generated_ boolean,
    tenant_id_ character varying(64),
    type_ integer,
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 $   DROP TABLE public.act_ge_bytearray;
       public         heap    postgres    false            �            1259    18980    act_ge_property    TABLE     �   CREATE TABLE public.act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);
 #   DROP TABLE public.act_ge_property;
       public         heap    postgres    false            �            1259    18983    act_ge_schema_log    TABLE     �   CREATE TABLE public.act_ge_schema_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone,
    version_ character varying(255)
);
 %   DROP TABLE public.act_ge_schema_log;
       public         heap    postgres    false            �            1259    18986    act_hi_actinst    TABLE     �  CREATE TABLE public.act_hi_actinst (
    id_ character varying(64) NOT NULL,
    parent_act_inst_id_ character varying(64),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    call_case_inst_id_ character varying(64),
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    act_inst_state_ integer,
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 "   DROP TABLE public.act_hi_actinst;
       public         heap    postgres    false            �            1259    18991    act_hi_attachment    TABLE     >  CREATE TABLE public.act_hi_attachment (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(255),
    name_ character varying(255),
    description_ character varying(4000),
    type_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    url_ character varying(4000),
    content_id_ character varying(64),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    removal_time_ timestamp without time zone
);
 %   DROP TABLE public.act_hi_attachment;
       public         heap    postgres    false            �            1259    18996    act_hi_batch    TABLE     b  CREATE TABLE public.act_hi_batch (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    total_jobs_ integer,
    jobs_per_seed_ integer,
    invocations_per_job_ integer,
    seed_job_def_id_ character varying(64),
    monitor_job_def_id_ character varying(64),
    batch_job_def_id_ character varying(64),
    tenant_id_ character varying(64),
    create_user_id_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    removal_time_ timestamp without time zone,
    exec_start_time_ timestamp without time zone
);
     DROP TABLE public.act_hi_batch;
       public         heap    postgres    false            �            1259    19001    act_hi_caseactinst    TABLE     �  CREATE TABLE public.act_hi_caseactinst (
    id_ character varying(64) NOT NULL,
    parent_act_inst_id_ character varying(64),
    case_def_id_ character varying(64) NOT NULL,
    case_inst_id_ character varying(64) NOT NULL,
    case_act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    call_case_inst_id_ character varying(64),
    case_act_name_ character varying(255),
    case_act_type_ character varying(255),
    create_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    state_ integer,
    required_ boolean,
    tenant_id_ character varying(64)
);
 &   DROP TABLE public.act_hi_caseactinst;
       public         heap    postgres    false            �            1259    19006    act_hi_caseinst    TABLE     &  CREATE TABLE public.act_hi_caseinst (
    id_ character varying(64) NOT NULL,
    case_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    case_def_id_ character varying(64) NOT NULL,
    create_time_ timestamp without time zone NOT NULL,
    close_time_ timestamp without time zone,
    duration_ bigint,
    state_ integer,
    create_user_id_ character varying(255),
    super_case_instance_id_ character varying(64),
    super_process_instance_id_ character varying(64),
    tenant_id_ character varying(64)
);
 #   DROP TABLE public.act_hi_caseinst;
       public         heap    postgres    false            �            1259    19011    act_hi_comment    TABLE     �  CREATE TABLE public.act_hi_comment (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    time_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    action_ character varying(255),
    message_ character varying(4000),
    full_msg_ bytea,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 "   DROP TABLE public.act_hi_comment;
       public         heap    postgres    false            �            1259    19016    act_hi_dec_in    TABLE     E  CREATE TABLE public.act_hi_dec_in (
    id_ character varying(64) NOT NULL,
    dec_inst_id_ character varying(64) NOT NULL,
    clause_id_ character varying(64),
    clause_name_ character varying(255),
    var_type_ character varying(100),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 !   DROP TABLE public.act_hi_dec_in;
       public         heap    postgres    false            �            1259    19021    act_hi_dec_out    TABLE     �  CREATE TABLE public.act_hi_dec_out (
    id_ character varying(64) NOT NULL,
    dec_inst_id_ character varying(64) NOT NULL,
    clause_id_ character varying(64),
    clause_name_ character varying(255),
    rule_id_ character varying(64),
    rule_order_ integer,
    var_name_ character varying(255),
    var_type_ character varying(100),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 "   DROP TABLE public.act_hi_dec_out;
       public         heap    postgres    false            �            1259    19026    act_hi_decinst    TABLE     �  CREATE TABLE public.act_hi_decinst (
    id_ character varying(64) NOT NULL,
    dec_def_id_ character varying(64) NOT NULL,
    dec_def_key_ character varying(255) NOT NULL,
    dec_def_name_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    proc_inst_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    act_inst_id_ character varying(64),
    act_id_ character varying(255),
    eval_time_ timestamp without time zone NOT NULL,
    removal_time_ timestamp without time zone,
    collect_value_ double precision,
    user_id_ character varying(255),
    root_dec_inst_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    dec_req_id_ character varying(64),
    dec_req_key_ character varying(255),
    tenant_id_ character varying(64)
);
 "   DROP TABLE public.act_hi_decinst;
       public         heap    postgres    false            �            1259    19031    act_hi_detail    TABLE     L  CREATE TABLE public.act_hi_detail (
    id_ character varying(64) NOT NULL,
    type_ character varying(255) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    act_inst_id_ character varying(64),
    var_inst_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(64),
    rev_ integer,
    time_ timestamp without time zone NOT NULL,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    operation_id_ character varying(64),
    removal_time_ timestamp without time zone,
    initial_ boolean
);
 !   DROP TABLE public.act_hi_detail;
       public         heap    postgres    false            �            1259    19036    act_hi_ext_task_log    TABLE     $  CREATE TABLE public.act_hi_ext_task_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    ext_task_id_ character varying(64) NOT NULL,
    retries_ integer,
    topic_name_ character varying(255),
    worker_id_ character varying(255),
    priority_ bigint DEFAULT 0 NOT NULL,
    error_msg_ character varying(4000),
    error_details_id_ character varying(64),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    tenant_id_ character varying(64),
    state_ integer,
    removal_time_ timestamp without time zone
);
 '   DROP TABLE public.act_hi_ext_task_log;
       public         heap    postgres    false            �            1259    19042    act_hi_identitylink    TABLE     B  CREATE TABLE public.act_hi_identitylink (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    type_ character varying(255),
    user_id_ character varying(255),
    group_id_ character varying(255),
    task_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    operation_type_ character varying(64),
    assigner_id_ character varying(64),
    proc_def_key_ character varying(255),
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 '   DROP TABLE public.act_hi_identitylink;
       public         heap    postgres    false            �            1259    19047    act_hi_incident    TABLE     �  CREATE TABLE public.act_hi_incident (
    id_ character varying(64) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    create_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    incident_msg_ character varying(4000),
    incident_type_ character varying(255) NOT NULL,
    activity_id_ character varying(255),
    failed_activity_id_ character varying(255),
    cause_incident_id_ character varying(64),
    root_cause_incident_id_ character varying(64),
    configuration_ character varying(255),
    history_configuration_ character varying(255),
    incident_state_ integer,
    tenant_id_ character varying(64),
    job_def_id_ character varying(64),
    annotation_ character varying(4000),
    removal_time_ timestamp without time zone
);
 #   DROP TABLE public.act_hi_incident;
       public         heap    postgres    false            �            1259    19052    act_hi_job_log    TABLE       CREATE TABLE public.act_hi_job_log (
    id_ character varying(64) NOT NULL,
    timestamp_ timestamp without time zone NOT NULL,
    job_id_ character varying(64) NOT NULL,
    job_duedate_ timestamp without time zone,
    job_retries_ integer,
    job_priority_ bigint DEFAULT 0 NOT NULL,
    job_exception_msg_ character varying(4000),
    job_exception_stack_id_ character varying(64),
    job_state_ integer,
    job_def_id_ character varying(64),
    job_def_type_ character varying(255),
    job_def_configuration_ character varying(255),
    act_id_ character varying(255),
    failed_act_id_ character varying(255),
    execution_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    process_instance_id_ character varying(64),
    process_def_id_ character varying(64),
    process_def_key_ character varying(255),
    deployment_id_ character varying(64),
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    hostname_ character varying(255),
    removal_time_ timestamp without time zone
);
 "   DROP TABLE public.act_hi_job_log;
       public         heap    postgres    false            �            1259    19058    act_hi_op_log    TABLE     w  CREATE TABLE public.act_hi_op_log (
    id_ character varying(64) NOT NULL,
    deployment_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    job_id_ character varying(64),
    job_def_id_ character varying(64),
    batch_id_ character varying(64),
    user_id_ character varying(255),
    timestamp_ timestamp without time zone NOT NULL,
    operation_type_ character varying(64),
    operation_id_ character varying(64),
    entity_type_ character varying(30),
    property_ character varying(64),
    org_value_ character varying(4000),
    new_value_ character varying(4000),
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone,
    category_ character varying(64),
    external_task_id_ character varying(64),
    annotation_ character varying(4000)
);
 !   DROP TABLE public.act_hi_op_log;
       public         heap    postgres    false            �            1259    19063    act_hi_procinst    TABLE     _  CREATE TABLE public.act_hi_procinst (
    id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    removal_time_ timestamp without time zone,
    duration_ bigint,
    start_user_id_ character varying(255),
    start_act_id_ character varying(255),
    end_act_id_ character varying(255),
    super_process_instance_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    super_case_instance_id_ character varying(64),
    case_inst_id_ character varying(64),
    delete_reason_ character varying(4000),
    tenant_id_ character varying(64),
    state_ character varying(255)
);
 #   DROP TABLE public.act_hi_procinst;
       public         heap    postgres    false            �            1259    19068    act_hi_taskinst    TABLE     H  CREATE TABLE public.act_hi_taskinst (
    id_ character varying(64) NOT NULL,
    task_def_key_ character varying(255),
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    act_inst_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    owner_ character varying(255),
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    priority_ integer,
    due_date_ timestamp without time zone,
    follow_up_date_ timestamp without time zone,
    tenant_id_ character varying(64),
    removal_time_ timestamp without time zone
);
 #   DROP TABLE public.act_hi_taskinst;
       public         heap    postgres    false            �            1259    19073    act_hi_varinst    TABLE     �  CREATE TABLE public.act_hi_varinst (
    id_ character varying(64) NOT NULL,
    proc_def_key_ character varying(255),
    proc_def_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    act_inst_id_ character varying(64),
    case_def_key_ character varying(255),
    case_def_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_execution_id_ character varying(64),
    task_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(100),
    create_time_ timestamp without time zone,
    rev_ integer,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    tenant_id_ character varying(64),
    state_ character varying(20),
    removal_time_ timestamp without time zone
);
 "   DROP TABLE public.act_hi_varinst;
       public         heap    postgres    false            �            1259    19078    act_id_group    TABLE     �   CREATE TABLE public.act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);
     DROP TABLE public.act_id_group;
       public         heap    postgres    false            �            1259    19083    act_id_info    TABLE     #  CREATE TABLE public.act_id_info (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(64),
    type_ character varying(64),
    key_ character varying(255),
    value_ character varying(255),
    password_ bytea,
    parent_id_ character varying(255)
);
    DROP TABLE public.act_id_info;
       public         heap    postgres    false            �            1259    19088    act_id_membership    TABLE     �   CREATE TABLE public.act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);
 %   DROP TABLE public.act_id_membership;
       public         heap    postgres    false            �            1259    19091    act_id_tenant    TABLE     �   CREATE TABLE public.act_id_tenant (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255)
);
 !   DROP TABLE public.act_id_tenant;
       public         heap    postgres    false            �            1259    19094    act_id_tenant_member    TABLE     �   CREATE TABLE public.act_id_tenant_member (
    id_ character varying(64) NOT NULL,
    tenant_id_ character varying(64) NOT NULL,
    user_id_ character varying(64),
    group_id_ character varying(64)
);
 (   DROP TABLE public.act_id_tenant_member;
       public         heap    postgres    false            �            1259    19097    act_id_user    TABLE     w  CREATE TABLE public.act_id_user (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    first_ character varying(255),
    last_ character varying(255),
    email_ character varying(255),
    pwd_ character varying(255),
    salt_ character varying(255),
    lock_exp_time_ timestamp without time zone,
    attempts_ integer,
    picture_id_ character varying(64)
);
    DROP TABLE public.act_id_user;
       public         heap    postgres    false            �            1259    19102    act_re_camformdef    TABLE     )  CREATE TABLE public.act_re_camformdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    tenant_id_ character varying(64)
);
 %   DROP TABLE public.act_re_camformdef;
       public         heap    postgres    false            �            1259    19107    act_re_case_def    TABLE     �  CREATE TABLE public.act_re_case_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    tenant_id_ character varying(64),
    history_ttl_ integer
);
 #   DROP TABLE public.act_re_case_def;
       public         heap    postgres    false            �            1259    19112    act_re_decision_def    TABLE     6  CREATE TABLE public.act_re_decision_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    dec_req_id_ character varying(64),
    dec_req_key_ character varying(255),
    tenant_id_ character varying(64),
    history_ttl_ integer,
    version_tag_ character varying(64)
);
 '   DROP TABLE public.act_re_decision_def;
       public         heap    postgres    false            �            1259    19117    act_re_decision_req_def    TABLE     �  CREATE TABLE public.act_re_decision_req_def (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    tenant_id_ character varying(64)
);
 +   DROP TABLE public.act_re_decision_req_def;
       public         heap    postgres    false            �            1259    19122    act_re_deployment    TABLE     �   CREATE TABLE public.act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    deploy_time_ timestamp without time zone,
    source_ character varying(255),
    tenant_id_ character varying(64)
);
 %   DROP TABLE public.act_re_deployment;
       public         heap    postgres    false            �            1259    19127    act_re_procdef    TABLE     O  CREATE TABLE public.act_re_procdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    has_start_form_key_ boolean,
    suspension_state_ integer,
    tenant_id_ character varying(64),
    version_tag_ character varying(64),
    history_ttl_ integer,
    startable_ boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.act_re_procdef;
       public         heap    postgres    false            �            1259    19133    act_ru_authorization    TABLE     �  CREATE TABLE public.act_ru_authorization (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    type_ integer NOT NULL,
    group_id_ character varying(255),
    user_id_ character varying(255),
    resource_type_ integer NOT NULL,
    resource_id_ character varying(255),
    perms_ integer,
    removal_time_ timestamp without time zone,
    root_proc_inst_id_ character varying(64)
);
 (   DROP TABLE public.act_ru_authorization;
       public         heap    postgres    false            �            1259    19138    act_ru_batch    TABLE       CREATE TABLE public.act_ru_batch (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    type_ character varying(255),
    total_jobs_ integer,
    jobs_created_ integer,
    jobs_per_seed_ integer,
    invocations_per_job_ integer,
    seed_job_def_id_ character varying(64),
    batch_job_def_id_ character varying(64),
    monitor_job_def_id_ character varying(64),
    suspension_state_ integer,
    configuration_ character varying(255),
    tenant_id_ character varying(64),
    create_user_id_ character varying(255),
    start_time_ timestamp without time zone,
    exec_start_time_ timestamp without time zone
);
     DROP TABLE public.act_ru_batch;
       public         heap    postgres    false            �            1259    19143    act_ru_case_execution    TABLE     �  CREATE TABLE public.act_ru_case_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    case_inst_id_ character varying(64),
    super_case_exec_ character varying(64),
    super_exec_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    case_def_id_ character varying(64),
    act_id_ character varying(255),
    prev_state_ integer,
    current_state_ integer,
    required_ boolean,
    tenant_id_ character varying(64)
);
 )   DROP TABLE public.act_ru_case_execution;
       public         heap    postgres    false            �            1259    19148    act_ru_case_sentry_part    TABLE       CREATE TABLE public.act_ru_case_sentry_part (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    case_inst_id_ character varying(64),
    case_exec_id_ character varying(64),
    sentry_id_ character varying(255),
    type_ character varying(255),
    source_case_exec_id_ character varying(64),
    standard_event_ character varying(255),
    source_ character varying(255),
    variable_event_ character varying(255),
    variable_name_ character varying(255),
    satisfied_ boolean,
    tenant_id_ character varying(64)
);
 +   DROP TABLE public.act_ru_case_sentry_part;
       public         heap    postgres    false            �            1259    19153    act_ru_event_subscr    TABLE     �  CREATE TABLE public.act_ru_event_subscr (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    event_type_ character varying(255) NOT NULL,
    event_name_ character varying(255),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    activity_id_ character varying(255),
    configuration_ character varying(255),
    created_ timestamp without time zone NOT NULL,
    tenant_id_ character varying(64)
);
 '   DROP TABLE public.act_ru_event_subscr;
       public         heap    postgres    false            �            1259    19158    act_ru_execution    TABLE     �  CREATE TABLE public.act_ru_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    root_proc_inst_id_ character varying(64),
    proc_inst_id_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    proc_def_id_ character varying(64),
    super_exec_ character varying(64),
    super_case_exec_ character varying(64),
    case_inst_id_ character varying(64),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    is_active_ boolean,
    is_concurrent_ boolean,
    is_scope_ boolean,
    is_event_scope_ boolean,
    suspension_state_ integer,
    cached_ent_state_ integer,
    sequence_counter_ bigint,
    tenant_id_ character varying(64)
);
 $   DROP TABLE public.act_ru_execution;
       public         heap    postgres    false            �            1259    19163    act_ru_ext_task    TABLE       CREATE TABLE public.act_ru_ext_task (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    worker_id_ character varying(255),
    topic_name_ character varying(255),
    retries_ integer,
    error_msg_ character varying(4000),
    error_details_id_ character varying(64),
    lock_exp_time_ timestamp without time zone,
    create_time_ timestamp without time zone,
    suspension_state_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    act_id_ character varying(255),
    act_inst_id_ character varying(64),
    tenant_id_ character varying(64),
    priority_ bigint DEFAULT 0 NOT NULL,
    last_failure_log_id_ character varying(64)
);
 #   DROP TABLE public.act_ru_ext_task;
       public         heap    postgres    false            �            1259    19169    act_ru_filter    TABLE       CREATE TABLE public.act_ru_filter (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    resource_type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    owner_ character varying(255),
    query_ text NOT NULL,
    properties_ text
);
 !   DROP TABLE public.act_ru_filter;
       public         heap    postgres    false                        1259    19174    act_ru_identitylink    TABLE     E  CREATE TABLE public.act_ru_identitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_def_id_ character varying(64),
    tenant_id_ character varying(64)
);
 '   DROP TABLE public.act_ru_identitylink;
       public         heap    postgres    false                       1259    19179    act_ru_incident    TABLE     �  CREATE TABLE public.act_ru_incident (
    id_ character varying(64) NOT NULL,
    rev_ integer NOT NULL,
    incident_timestamp_ timestamp without time zone NOT NULL,
    incident_msg_ character varying(4000),
    incident_type_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    activity_id_ character varying(255),
    failed_activity_id_ character varying(255),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    cause_incident_id_ character varying(64),
    root_cause_incident_id_ character varying(64),
    configuration_ character varying(255),
    tenant_id_ character varying(64),
    job_def_id_ character varying(64),
    annotation_ character varying(4000)
);
 #   DROP TABLE public.act_ru_incident;
       public         heap    postgres    false                       1259    19184 
   act_ru_job    TABLE     �  CREATE TABLE public.act_ru_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    root_proc_inst_id_ character varying(64),
    process_instance_id_ character varying(64),
    process_def_id_ character varying(64),
    process_def_key_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    failed_act_id_ character varying(255),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    repeat_offset_ bigint DEFAULT 0,
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    deployment_id_ character varying(64),
    suspension_state_ integer DEFAULT 1 NOT NULL,
    job_def_id_ character varying(64),
    priority_ bigint DEFAULT 0 NOT NULL,
    sequence_counter_ bigint,
    tenant_id_ character varying(64),
    create_time_ timestamp without time zone,
    last_failure_log_id_ character varying(64)
);
    DROP TABLE public.act_ru_job;
       public         heap    postgres    false                       1259    19192    act_ru_jobdef    TABLE     �  CREATE TABLE public.act_ru_jobdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    proc_def_id_ character varying(64),
    proc_def_key_ character varying(255),
    act_id_ character varying(255),
    job_type_ character varying(255) NOT NULL,
    job_configuration_ character varying(255),
    suspension_state_ integer,
    job_priority_ bigint,
    tenant_id_ character varying(64),
    deployment_id_ character varying(64)
);
 !   DROP TABLE public.act_ru_jobdef;
       public         heap    postgres    false                       1259    19197    act_ru_meter_log    TABLE       CREATE TABLE public.act_ru_meter_log (
    id_ character varying(64) NOT NULL,
    name_ character varying(64) NOT NULL,
    reporter_ character varying(255),
    value_ bigint,
    timestamp_ timestamp without time zone,
    milliseconds_ bigint DEFAULT 0
);
 $   DROP TABLE public.act_ru_meter_log;
       public         heap    postgres    false                       1259    19201    act_ru_task    TABLE     }  CREATE TABLE public.act_ru_task (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    case_execution_id_ character varying(64),
    case_inst_id_ character varying(64),
    case_def_id_ character varying(64),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    task_def_key_ character varying(255),
    owner_ character varying(255),
    assignee_ character varying(255),
    delegation_ character varying(64),
    priority_ integer,
    create_time_ timestamp without time zone,
    last_updated_ timestamp without time zone,
    due_date_ timestamp without time zone,
    follow_up_date_ timestamp without time zone,
    suspension_state_ integer,
    tenant_id_ character varying(64)
);
    DROP TABLE public.act_ru_task;
       public         heap    postgres    false                       1259    19206    act_ru_task_meter_log    TABLE     �   CREATE TABLE public.act_ru_task_meter_log (
    id_ character varying(64) NOT NULL,
    assignee_hash_ bigint,
    timestamp_ timestamp without time zone
);
 )   DROP TABLE public.act_ru_task_meter_log;
       public         heap    postgres    false                       1259    19209    act_ru_variable    TABLE     �  CREATE TABLE public.act_ru_variable (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    case_execution_id_ character varying(64),
    case_inst_id_ character varying(64),
    task_id_ character varying(64),
    batch_id_ character varying(64),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    var_scope_ character varying(64),
    sequence_counter_ bigint,
    is_concurrent_local_ boolean,
    tenant_id_ character varying(64)
);
 #   DROP TABLE public.act_ru_variable;
       public         heap    postgres    false                       1259    19214    databasechangelog    TABLE     Y  CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);
 %   DROP TABLE public.databasechangelog;
       public         heap    postgres    false            	           1259    19219    databasechangeloglock    TABLE     �   CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);
 )   DROP TABLE public.databasechangeloglock;
       public         heap    postgres    false            
           1259    19222    employee    TABLE     *  CREATE TABLE public.employee (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    phone_number character varying(255),
    hire_date timestamp without time zone,
    salary bigint,
    commission_pct bigint
);
    DROP TABLE public.employee;
       public         heap    postgres    false                       1259    19227    jhi_authority    TABLE     O   CREATE TABLE public.jhi_authority (
    name character varying(50) NOT NULL
);
 !   DROP TABLE public.jhi_authority;
       public         heap    postgres    false                       1259    19230    jhi_user    TABLE     �  CREATE TABLE public.jhi_user (
    id bigint NOT NULL,
    login character varying(50) NOT NULL,
    password_hash character varying(60) NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(191),
    image_url character varying(256),
    activated boolean NOT NULL,
    lang_key character varying(10),
    activation_key character varying(20),
    reset_key character varying(20),
    created_by character varying(50) NOT NULL,
    created_date timestamp without time zone,
    reset_date timestamp without time zone,
    last_modified_by character varying(50),
    last_modified_date timestamp without time zone
);
    DROP TABLE public.jhi_user;
       public         heap    postgres    false                       1259    19235    jhi_user_authority    TABLE     {   CREATE TABLE public.jhi_user_authority (
    user_id bigint NOT NULL,
    authority_name character varying(50) NOT NULL
);
 &   DROP TABLE public.jhi_user_authority;
       public         heap    postgres    false                       1259    19238    job    TABLE     �   CREATE TABLE public.job (
    id bigint NOT NULL,
    job_title character varying(255),
    min_salary bigint,
    max_salary bigint,
    employee_id bigint
);
    DROP TABLE public.job;
       public         heap    postgres    false                       1259    19241    sequence_generator    SEQUENCE        CREATE SEQUENCE public.sequence_generator
    START WITH 1050
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sequence_generator;
       public          postgres    false            P          0    18975    act_ge_bytearray 
   TABLE DATA           �   COPY public.act_ge_bytearray (id_, rev_, name_, deployment_id_, bytes_, generated_, tenant_id_, type_, create_time_, root_proc_inst_id_, removal_time_) FROM stdin;
    public          postgres    false    215   ݓ      Q          0    18980    act_ge_property 
   TABLE DATA           >   COPY public.act_ge_property (name_, value_, rev_) FROM stdin;
    public          postgres    false    216   ��      R          0    18983    act_ge_schema_log 
   TABLE DATA           F   COPY public.act_ge_schema_log (id_, timestamp_, version_) FROM stdin;
    public          postgres    false    217   Ô      S          0    18986    act_hi_actinst 
   TABLE DATA           O  COPY public.act_hi_actinst (id_, parent_act_inst_id_, proc_def_key_, proc_def_id_, root_proc_inst_id_, proc_inst_id_, execution_id_, act_id_, task_id_, call_proc_inst_id_, call_case_inst_id_, act_name_, act_type_, assignee_, start_time_, end_time_, duration_, act_inst_state_, sequence_counter_, tenant_id_, removal_time_) FROM stdin;
    public          postgres    false    218   �      T          0    18991    act_hi_attachment 
   TABLE DATA           �   COPY public.act_hi_attachment (id_, rev_, user_id_, name_, description_, type_, task_id_, root_proc_inst_id_, proc_inst_id_, url_, content_id_, tenant_id_, create_time_, removal_time_) FROM stdin;
    public          postgres    false    219    �      U          0    18996    act_hi_batch 
   TABLE DATA           �   COPY public.act_hi_batch (id_, type_, total_jobs_, jobs_per_seed_, invocations_per_job_, seed_job_def_id_, monitor_job_def_id_, batch_job_def_id_, tenant_id_, create_user_id_, start_time_, end_time_, removal_time_, exec_start_time_) FROM stdin;
    public          postgres    false    220   =�      V          0    19001    act_hi_caseactinst 
   TABLE DATA             COPY public.act_hi_caseactinst (id_, parent_act_inst_id_, case_def_id_, case_inst_id_, case_act_id_, task_id_, call_proc_inst_id_, call_case_inst_id_, case_act_name_, case_act_type_, create_time_, end_time_, duration_, state_, required_, tenant_id_) FROM stdin;
    public          postgres    false    221   Z�      W          0    19006    act_hi_caseinst 
   TABLE DATA           �   COPY public.act_hi_caseinst (id_, case_inst_id_, business_key_, case_def_id_, create_time_, close_time_, duration_, state_, create_user_id_, super_case_instance_id_, super_process_instance_id_, tenant_id_) FROM stdin;
    public          postgres    false    222   w�      X          0    19011    act_hi_comment 
   TABLE DATA           �   COPY public.act_hi_comment (id_, type_, time_, user_id_, task_id_, root_proc_inst_id_, proc_inst_id_, action_, message_, full_msg_, tenant_id_, removal_time_) FROM stdin;
    public          postgres    false    223   ��      Y          0    19016    act_hi_dec_in 
   TABLE DATA           �   COPY public.act_hi_dec_in (id_, dec_inst_id_, clause_id_, clause_name_, var_type_, bytearray_id_, double_, long_, text_, text2_, tenant_id_, create_time_, root_proc_inst_id_, removal_time_) FROM stdin;
    public          postgres    false    224   ��      Z          0    19021    act_hi_dec_out 
   TABLE DATA           �   COPY public.act_hi_dec_out (id_, dec_inst_id_, clause_id_, clause_name_, rule_id_, rule_order_, var_name_, var_type_, bytearray_id_, double_, long_, text_, text2_, tenant_id_, create_time_, root_proc_inst_id_, removal_time_) FROM stdin;
    public          postgres    false    225   Ε      [          0    19026    act_hi_decinst 
   TABLE DATA           I  COPY public.act_hi_decinst (id_, dec_def_id_, dec_def_key_, dec_def_name_, proc_def_key_, proc_def_id_, proc_inst_id_, case_def_key_, case_def_id_, case_inst_id_, act_inst_id_, act_id_, eval_time_, removal_time_, collect_value_, user_id_, root_dec_inst_id_, root_proc_inst_id_, dec_req_id_, dec_req_key_, tenant_id_) FROM stdin;
    public          postgres    false    226   �      \          0    19031    act_hi_detail 
   TABLE DATA           |  COPY public.act_hi_detail (id_, type_, proc_def_key_, proc_def_id_, root_proc_inst_id_, proc_inst_id_, execution_id_, case_def_key_, case_def_id_, case_inst_id_, case_execution_id_, task_id_, act_inst_id_, var_inst_id_, name_, var_type_, rev_, time_, bytearray_id_, double_, long_, text_, text2_, sequence_counter_, tenant_id_, operation_id_, removal_time_, initial_) FROM stdin;
    public          postgres    false    227   �      ]          0    19036    act_hi_ext_task_log 
   TABLE DATA           "  COPY public.act_hi_ext_task_log (id_, timestamp_, ext_task_id_, retries_, topic_name_, worker_id_, priority_, error_msg_, error_details_id_, act_id_, act_inst_id_, execution_id_, proc_inst_id_, root_proc_inst_id_, proc_def_id_, proc_def_key_, tenant_id_, state_, removal_time_) FROM stdin;
    public          postgres    false    228   %�      ^          0    19042    act_hi_identitylink 
   TABLE DATA           �   COPY public.act_hi_identitylink (id_, timestamp_, type_, user_id_, group_id_, task_id_, root_proc_inst_id_, proc_def_id_, operation_type_, assigner_id_, proc_def_key_, tenant_id_, removal_time_) FROM stdin;
    public          postgres    false    229   B�      _          0    19047    act_hi_incident 
   TABLE DATA           s  COPY public.act_hi_incident (id_, proc_def_key_, proc_def_id_, root_proc_inst_id_, proc_inst_id_, execution_id_, create_time_, end_time_, incident_msg_, incident_type_, activity_id_, failed_activity_id_, cause_incident_id_, root_cause_incident_id_, configuration_, history_configuration_, incident_state_, tenant_id_, job_def_id_, annotation_, removal_time_) FROM stdin;
    public          postgres    false    230   _�      `          0    19052    act_hi_job_log 
   TABLE DATA           �  COPY public.act_hi_job_log (id_, timestamp_, job_id_, job_duedate_, job_retries_, job_priority_, job_exception_msg_, job_exception_stack_id_, job_state_, job_def_id_, job_def_type_, job_def_configuration_, act_id_, failed_act_id_, execution_id_, root_proc_inst_id_, process_instance_id_, process_def_id_, process_def_key_, deployment_id_, sequence_counter_, tenant_id_, hostname_, removal_time_) FROM stdin;
    public          postgres    false    231   |�      a          0    19058    act_hi_op_log 
   TABLE DATA           �  COPY public.act_hi_op_log (id_, deployment_id_, proc_def_id_, proc_def_key_, root_proc_inst_id_, proc_inst_id_, execution_id_, case_def_id_, case_inst_id_, case_execution_id_, task_id_, job_id_, job_def_id_, batch_id_, user_id_, timestamp_, operation_type_, operation_id_, entity_type_, property_, org_value_, new_value_, tenant_id_, removal_time_, category_, external_task_id_, annotation_) FROM stdin;
    public          postgres    false    232   ��      b          0    19063    act_hi_procinst 
   TABLE DATA           C  COPY public.act_hi_procinst (id_, proc_inst_id_, business_key_, proc_def_key_, proc_def_id_, start_time_, end_time_, removal_time_, duration_, start_user_id_, start_act_id_, end_act_id_, super_process_instance_id_, root_proc_inst_id_, super_case_instance_id_, case_inst_id_, delete_reason_, tenant_id_, state_) FROM stdin;
    public          postgres    false    233   ��      c          0    19068    act_hi_taskinst 
   TABLE DATA           �  COPY public.act_hi_taskinst (id_, task_def_key_, proc_def_key_, proc_def_id_, root_proc_inst_id_, proc_inst_id_, execution_id_, case_def_key_, case_def_id_, case_inst_id_, case_execution_id_, act_inst_id_, name_, parent_task_id_, description_, owner_, assignee_, start_time_, end_time_, duration_, delete_reason_, priority_, due_date_, follow_up_date_, tenant_id_, removal_time_) FROM stdin;
    public          postgres    false    234   Ӗ      d          0    19073    act_hi_varinst 
   TABLE DATA           K  COPY public.act_hi_varinst (id_, proc_def_key_, proc_def_id_, root_proc_inst_id_, proc_inst_id_, execution_id_, act_inst_id_, case_def_key_, case_def_id_, case_inst_id_, case_execution_id_, task_id_, name_, var_type_, create_time_, rev_, bytearray_id_, double_, long_, text_, text2_, tenant_id_, state_, removal_time_) FROM stdin;
    public          postgres    false    235   �      e          0    19078    act_id_group 
   TABLE DATA           ?   COPY public.act_id_group (id_, rev_, name_, type_) FROM stdin;
    public          postgres    false    236   �      f          0    19083    act_id_info 
   TABLE DATA           f   COPY public.act_id_info (id_, rev_, user_id_, type_, key_, value_, password_, parent_id_) FROM stdin;
    public          postgres    false    237   *�      g          0    19088    act_id_membership 
   TABLE DATA           @   COPY public.act_id_membership (user_id_, group_id_) FROM stdin;
    public          postgres    false    238   G�      h          0    19091    act_id_tenant 
   TABLE DATA           9   COPY public.act_id_tenant (id_, rev_, name_) FROM stdin;
    public          postgres    false    239   d�      i          0    19094    act_id_tenant_member 
   TABLE DATA           T   COPY public.act_id_tenant_member (id_, tenant_id_, user_id_, group_id_) FROM stdin;
    public          postgres    false    240   ��      j          0    19097    act_id_user 
   TABLE DATA           |   COPY public.act_id_user (id_, rev_, first_, last_, email_, pwd_, salt_, lock_exp_time_, attempts_, picture_id_) FROM stdin;
    public          postgres    false    241   ��      k          0    19102    act_re_camformdef 
   TABLE DATA           r   COPY public.act_re_camformdef (id_, rev_, key_, version_, deployment_id_, resource_name_, tenant_id_) FROM stdin;
    public          postgres    false    242   ��      l          0    19107    act_re_case_def 
   TABLE DATA           �   COPY public.act_re_case_def (id_, rev_, category_, name_, key_, version_, deployment_id_, resource_name_, dgrm_resource_name_, tenant_id_, history_ttl_) FROM stdin;
    public          postgres    false    243   ؗ      m          0    19112    act_re_decision_def 
   TABLE DATA           �   COPY public.act_re_decision_def (id_, rev_, category_, name_, key_, version_, deployment_id_, resource_name_, dgrm_resource_name_, dec_req_id_, dec_req_key_, tenant_id_, history_ttl_, version_tag_) FROM stdin;
    public          postgres    false    244   ��      n          0    19117    act_re_decision_req_def 
   TABLE DATA           �   COPY public.act_re_decision_req_def (id_, rev_, category_, name_, key_, version_, deployment_id_, resource_name_, dgrm_resource_name_, tenant_id_) FROM stdin;
    public          postgres    false    245   �      o          0    19122    act_re_deployment 
   TABLE DATA           Z   COPY public.act_re_deployment (id_, name_, deploy_time_, source_, tenant_id_) FROM stdin;
    public          postgres    false    246   /�      p          0    19127    act_re_procdef 
   TABLE DATA           �   COPY public.act_re_procdef (id_, rev_, category_, name_, key_, version_, deployment_id_, resource_name_, dgrm_resource_name_, has_start_form_key_, suspension_state_, tenant_id_, version_tag_, history_ttl_, startable_) FROM stdin;
    public          postgres    false    247   L�      q          0    19133    act_ru_authorization 
   TABLE DATA           �   COPY public.act_ru_authorization (id_, rev_, type_, group_id_, user_id_, resource_type_, resource_id_, perms_, removal_time_, root_proc_inst_id_) FROM stdin;
    public          postgres    false    248   i�      r          0    19138    act_ru_batch 
   TABLE DATA             COPY public.act_ru_batch (id_, rev_, type_, total_jobs_, jobs_created_, jobs_per_seed_, invocations_per_job_, seed_job_def_id_, batch_job_def_id_, monitor_job_def_id_, suspension_state_, configuration_, tenant_id_, create_user_id_, start_time_, exec_start_time_) FROM stdin;
    public          postgres    false    249   ��      s          0    19143    act_ru_case_execution 
   TABLE DATA           �   COPY public.act_ru_case_execution (id_, rev_, case_inst_id_, super_case_exec_, super_exec_, business_key_, parent_id_, case_def_id_, act_id_, prev_state_, current_state_, required_, tenant_id_) FROM stdin;
    public          postgres    false    250   ��      t          0    19148    act_ru_case_sentry_part 
   TABLE DATA           �   COPY public.act_ru_case_sentry_part (id_, rev_, case_inst_id_, case_exec_id_, sentry_id_, type_, source_case_exec_id_, standard_event_, source_, variable_event_, variable_name_, satisfied_, tenant_id_) FROM stdin;
    public          postgres    false    251   ��      u          0    19153    act_ru_event_subscr 
   TABLE DATA           �   COPY public.act_ru_event_subscr (id_, rev_, event_type_, event_name_, execution_id_, proc_inst_id_, activity_id_, configuration_, created_, tenant_id_) FROM stdin;
    public          postgres    false    252   ݘ      v          0    19158    act_ru_execution 
   TABLE DATA           C  COPY public.act_ru_execution (id_, rev_, root_proc_inst_id_, proc_inst_id_, business_key_, parent_id_, proc_def_id_, super_exec_, super_case_exec_, case_inst_id_, act_id_, act_inst_id_, is_active_, is_concurrent_, is_scope_, is_event_scope_, suspension_state_, cached_ent_state_, sequence_counter_, tenant_id_) FROM stdin;
    public          postgres    false    253   ��      w          0    19163    act_ru_ext_task 
   TABLE DATA           &  COPY public.act_ru_ext_task (id_, rev_, worker_id_, topic_name_, retries_, error_msg_, error_details_id_, lock_exp_time_, create_time_, suspension_state_, execution_id_, proc_inst_id_, proc_def_id_, proc_def_key_, act_id_, act_inst_id_, tenant_id_, priority_, last_failure_log_id_) FROM stdin;
    public          postgres    false    254   �      x          0    19169    act_ru_filter 
   TABLE DATA           f   COPY public.act_ru_filter (id_, rev_, resource_type_, name_, owner_, query_, properties_) FROM stdin;
    public          postgres    false    255   4�      y          0    19174    act_ru_identitylink 
   TABLE DATA           x   COPY public.act_ru_identitylink (id_, rev_, group_id_, type_, user_id_, task_id_, proc_def_id_, tenant_id_) FROM stdin;
    public          postgres    false    256   Q�      z          0    19179    act_ru_incident 
   TABLE DATA             COPY public.act_ru_incident (id_, rev_, incident_timestamp_, incident_msg_, incident_type_, execution_id_, activity_id_, failed_activity_id_, proc_inst_id_, proc_def_id_, cause_incident_id_, root_cause_incident_id_, configuration_, tenant_id_, job_def_id_, annotation_) FROM stdin;
    public          postgres    false    257   n�      {          0    19184 
   act_ru_job 
   TABLE DATA           �  COPY public.act_ru_job (id_, rev_, type_, lock_exp_time_, lock_owner_, exclusive_, execution_id_, root_proc_inst_id_, process_instance_id_, process_def_id_, process_def_key_, retries_, exception_stack_id_, exception_msg_, failed_act_id_, duedate_, repeat_, repeat_offset_, handler_type_, handler_cfg_, deployment_id_, suspension_state_, job_def_id_, priority_, sequence_counter_, tenant_id_, create_time_, last_failure_log_id_) FROM stdin;
    public          postgres    false    258   ��      |          0    19192    act_ru_jobdef 
   TABLE DATA           �   COPY public.act_ru_jobdef (id_, rev_, proc_def_id_, proc_def_key_, act_id_, job_type_, job_configuration_, suspension_state_, job_priority_, tenant_id_, deployment_id_) FROM stdin;
    public          postgres    false    259   ��      }          0    19197    act_ru_meter_log 
   TABLE DATA           d   COPY public.act_ru_meter_log (id_, name_, reporter_, value_, timestamp_, milliseconds_) FROM stdin;
    public          postgres    false    260   ř      ~          0    19201    act_ru_task 
   TABLE DATA           E  COPY public.act_ru_task (id_, rev_, execution_id_, proc_inst_id_, proc_def_id_, case_execution_id_, case_inst_id_, case_def_id_, name_, parent_task_id_, description_, task_def_key_, owner_, assignee_, delegation_, priority_, create_time_, last_updated_, due_date_, follow_up_date_, suspension_state_, tenant_id_) FROM stdin;
    public          postgres    false    261   �                0    19206    act_ru_task_meter_log 
   TABLE DATA           P   COPY public.act_ru_task_meter_log (id_, assignee_hash_, timestamp_) FROM stdin;
    public          postgres    false    262   2�      �          0    19209    act_ru_variable 
   TABLE DATA             COPY public.act_ru_variable (id_, rev_, type_, name_, execution_id_, proc_inst_id_, proc_def_id_, case_execution_id_, case_inst_id_, task_id_, batch_id_, bytearray_id_, double_, long_, text_, text2_, var_scope_, sequence_counter_, is_concurrent_local_, tenant_id_) FROM stdin;
    public          postgres    false    263   O�      �          0    19214    databasechangelog 
   TABLE DATA           �   COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
    public          postgres    false    264   l�      �          0    19219    databasechangeloglock 
   TABLE DATA           R   COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
    public          postgres    false    265   ��      �          0    19222    employee 
   TABLE DATA           u   COPY public.employee (id, first_name, last_name, email, phone_number, hire_date, salary, commission_pct) FROM stdin;
    public          postgres    false    266   #�      �          0    19227    jhi_authority 
   TABLE DATA           -   COPY public.jhi_authority (name) FROM stdin;
    public          postgres    false    267   P�      �          0    19230    jhi_user 
   TABLE DATA           �   COPY public.jhi_user (id, login, password_hash, first_name, last_name, email, image_url, activated, lang_key, activation_key, reset_key, created_by, created_date, reset_date, last_modified_by, last_modified_date) FROM stdin;
    public          postgres    false    268   �      �          0    19235    jhi_user_authority 
   TABLE DATA           E   COPY public.jhi_user_authority (user_id, authority_name) FROM stdin;
    public          postgres    false    269   O�      �          0    19238    job 
   TABLE DATA           Q   COPY public.job (id, job_title, min_salary, max_salary, employee_id) FROM stdin;
    public          postgres    false    270   ��      �           0    0    sequence_generator    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sequence_generator', 1050, false);
          public          postgres    false    271            5           2606    19243 &   act_ge_bytearray act_ge_bytearray_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);
 P   ALTER TABLE ONLY public.act_ge_bytearray DROP CONSTRAINT act_ge_bytearray_pkey;
       public            postgres    false    215            ;           2606    19245 $   act_ge_property act_ge_property_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);
 N   ALTER TABLE ONLY public.act_ge_property DROP CONSTRAINT act_ge_property_pkey;
       public            postgres    false    216            =           2606    19247 (   act_ge_schema_log act_ge_schema_log_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.act_ge_schema_log
    ADD CONSTRAINT act_ge_schema_log_pkey PRIMARY KEY (id_);
 R   ALTER TABLE ONLY public.act_ge_schema_log DROP CONSTRAINT act_ge_schema_log_pkey;
       public            postgres    false    217            ?           2606    19249 "   act_hi_actinst act_hi_actinst_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_actinst DROP CONSTRAINT act_hi_actinst_pkey;
       public            postgres    false    218            K           2606    19251 (   act_hi_attachment act_hi_attachment_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);
 R   ALTER TABLE ONLY public.act_hi_attachment DROP CONSTRAINT act_hi_attachment_pkey;
       public            postgres    false    219            S           2606    19253    act_hi_batch act_hi_batch_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.act_hi_batch
    ADD CONSTRAINT act_hi_batch_pkey PRIMARY KEY (id_);
 H   ALTER TABLE ONLY public.act_hi_batch DROP CONSTRAINT act_hi_batch_pkey;
       public            postgres    false    220            U           2606    19255 *   act_hi_caseactinst act_hi_caseactinst_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.act_hi_caseactinst
    ADD CONSTRAINT act_hi_caseactinst_pkey PRIMARY KEY (id_);
 T   ALTER TABLE ONLY public.act_hi_caseactinst DROP CONSTRAINT act_hi_caseactinst_pkey;
       public            postgres    false    221            [           2606    19257 1   act_hi_caseinst act_hi_caseinst_case_inst_id__key 
   CONSTRAINT     u   ALTER TABLE ONLY public.act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_case_inst_id__key UNIQUE (case_inst_id_);
 [   ALTER TABLE ONLY public.act_hi_caseinst DROP CONSTRAINT act_hi_caseinst_case_inst_id__key;
       public            postgres    false    222            ]           2606    19259 $   act_hi_caseinst act_hi_caseinst_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_hi_caseinst
    ADD CONSTRAINT act_hi_caseinst_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_hi_caseinst DROP CONSTRAINT act_hi_caseinst_pkey;
       public            postgres    false    222            b           2606    19261 "   act_hi_comment act_hi_comment_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_comment DROP CONSTRAINT act_hi_comment_pkey;
       public            postgres    false    223            h           2606    19263     act_hi_dec_in act_hi_dec_in_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_hi_dec_in
    ADD CONSTRAINT act_hi_dec_in_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_hi_dec_in DROP CONSTRAINT act_hi_dec_in_pkey;
       public            postgres    false    224            n           2606    19265 "   act_hi_dec_out act_hi_dec_out_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_dec_out
    ADD CONSTRAINT act_hi_dec_out_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_dec_out DROP CONSTRAINT act_hi_dec_out_pkey;
       public            postgres    false    225            t           2606    19267 "   act_hi_decinst act_hi_decinst_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_decinst
    ADD CONSTRAINT act_hi_decinst_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_decinst DROP CONSTRAINT act_hi_decinst_pkey;
       public            postgres    false    226            �           2606    19269     act_hi_detail act_hi_detail_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_hi_detail DROP CONSTRAINT act_hi_detail_pkey;
       public            postgres    false    227            �           2606    19271 ,   act_hi_ext_task_log act_hi_ext_task_log_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.act_hi_ext_task_log
    ADD CONSTRAINT act_hi_ext_task_log_pkey PRIMARY KEY (id_);
 V   ALTER TABLE ONLY public.act_hi_ext_task_log DROP CONSTRAINT act_hi_ext_task_log_pkey;
       public            postgres    false    228            �           2606    19273 ,   act_hi_identitylink act_hi_identitylink_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.act_hi_identitylink
    ADD CONSTRAINT act_hi_identitylink_pkey PRIMARY KEY (id_);
 V   ALTER TABLE ONLY public.act_hi_identitylink DROP CONSTRAINT act_hi_identitylink_pkey;
       public            postgres    false    229            �           2606    19275 $   act_hi_incident act_hi_incident_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_hi_incident
    ADD CONSTRAINT act_hi_incident_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_hi_incident DROP CONSTRAINT act_hi_incident_pkey;
       public            postgres    false    230            �           2606    19277 "   act_hi_job_log act_hi_job_log_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_job_log
    ADD CONSTRAINT act_hi_job_log_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_job_log DROP CONSTRAINT act_hi_job_log_pkey;
       public            postgres    false    231            �           2606    19279     act_hi_op_log act_hi_op_log_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_hi_op_log
    ADD CONSTRAINT act_hi_op_log_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_hi_op_log DROP CONSTRAINT act_hi_op_log_pkey;
       public            postgres    false    232            �           2606    19281 $   act_hi_procinst act_hi_procinst_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_hi_procinst DROP CONSTRAINT act_hi_procinst_pkey;
       public            postgres    false    233            �           2606    19283 1   act_hi_procinst act_hi_procinst_proc_inst_id__key 
   CONSTRAINT     u   ALTER TABLE ONLY public.act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);
 [   ALTER TABLE ONLY public.act_hi_procinst DROP CONSTRAINT act_hi_procinst_proc_inst_id__key;
       public            postgres    false    233            �           2606    19285 $   act_hi_taskinst act_hi_taskinst_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_hi_taskinst DROP CONSTRAINT act_hi_taskinst_pkey;
       public            postgres    false    234            �           2606    19287 "   act_hi_varinst act_hi_varinst_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_hi_varinst
    ADD CONSTRAINT act_hi_varinst_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_hi_varinst DROP CONSTRAINT act_hi_varinst_pkey;
       public            postgres    false    235            �           2606    19289    act_id_group act_id_group_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);
 H   ALTER TABLE ONLY public.act_id_group DROP CONSTRAINT act_id_group_pkey;
       public            postgres    false    236            �           2606    19291    act_id_info act_id_info_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);
 F   ALTER TABLE ONLY public.act_id_info DROP CONSTRAINT act_id_info_pkey;
       public            postgres    false    237            �           2606    19293 (   act_id_membership act_id_membership_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);
 R   ALTER TABLE ONLY public.act_id_membership DROP CONSTRAINT act_id_membership_pkey;
       public            postgres    false    238    238            �           2606    19295 .   act_id_tenant_member act_id_tenant_member_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_id_tenant_member_pkey PRIMARY KEY (id_);
 X   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_id_tenant_member_pkey;
       public            postgres    false    240            �           2606    19297     act_id_tenant act_id_tenant_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_id_tenant
    ADD CONSTRAINT act_id_tenant_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_id_tenant DROP CONSTRAINT act_id_tenant_pkey;
       public            postgres    false    239            �           2606    19299    act_id_user act_id_user_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);
 F   ALTER TABLE ONLY public.act_id_user DROP CONSTRAINT act_id_user_pkey;
       public            postgres    false    241            �           2606    19301 (   act_re_camformdef act_re_camformdef_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.act_re_camformdef
    ADD CONSTRAINT act_re_camformdef_pkey PRIMARY KEY (id_);
 R   ALTER TABLE ONLY public.act_re_camformdef DROP CONSTRAINT act_re_camformdef_pkey;
       public            postgres    false    242                        2606    19303 $   act_re_case_def act_re_case_def_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_re_case_def
    ADD CONSTRAINT act_re_case_def_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_re_case_def DROP CONSTRAINT act_re_case_def_pkey;
       public            postgres    false    243                       2606    19305 ,   act_re_decision_def act_re_decision_def_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.act_re_decision_def
    ADD CONSTRAINT act_re_decision_def_pkey PRIMARY KEY (id_);
 V   ALTER TABLE ONLY public.act_re_decision_def DROP CONSTRAINT act_re_decision_def_pkey;
       public            postgres    false    244                       2606    19307 4   act_re_decision_req_def act_re_decision_req_def_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.act_re_decision_req_def
    ADD CONSTRAINT act_re_decision_req_def_pkey PRIMARY KEY (id_);
 ^   ALTER TABLE ONLY public.act_re_decision_req_def DROP CONSTRAINT act_re_decision_req_def_pkey;
       public            postgres    false    245                       2606    19309 (   act_re_deployment act_re_deployment_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);
 R   ALTER TABLE ONLY public.act_re_deployment DROP CONSTRAINT act_re_deployment_pkey;
       public            postgres    false    246                       2606    19311 "   act_re_procdef act_re_procdef_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);
 L   ALTER TABLE ONLY public.act_re_procdef DROP CONSTRAINT act_re_procdef_pkey;
       public            postgres    false    247                       2606    19313 .   act_ru_authorization act_ru_authorization_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.act_ru_authorization
    ADD CONSTRAINT act_ru_authorization_pkey PRIMARY KEY (id_);
 X   ALTER TABLE ONLY public.act_ru_authorization DROP CONSTRAINT act_ru_authorization_pkey;
       public            postgres    false    248                       2606    19315    act_ru_batch act_ru_batch_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.act_ru_batch
    ADD CONSTRAINT act_ru_batch_pkey PRIMARY KEY (id_);
 H   ALTER TABLE ONLY public.act_ru_batch DROP CONSTRAINT act_ru_batch_pkey;
       public            postgres    false    249            &           2606    19317 0   act_ru_case_execution act_ru_case_execution_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.act_ru_case_execution
    ADD CONSTRAINT act_ru_case_execution_pkey PRIMARY KEY (id_);
 Z   ALTER TABLE ONLY public.act_ru_case_execution DROP CONSTRAINT act_ru_case_execution_pkey;
       public            postgres    false    250            *           2606    19319 4   act_ru_case_sentry_part act_ru_case_sentry_part_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.act_ru_case_sentry_part
    ADD CONSTRAINT act_ru_case_sentry_part_pkey PRIMARY KEY (id_);
 ^   ALTER TABLE ONLY public.act_ru_case_sentry_part DROP CONSTRAINT act_ru_case_sentry_part_pkey;
       public            postgres    false    251            0           2606    19321 ,   act_ru_event_subscr act_ru_event_subscr_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);
 V   ALTER TABLE ONLY public.act_ru_event_subscr DROP CONSTRAINT act_ru_event_subscr_pkey;
       public            postgres    false    252            9           2606    19323 &   act_ru_execution act_ru_execution_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);
 P   ALTER TABLE ONLY public.act_ru_execution DROP CONSTRAINT act_ru_execution_pkey;
       public            postgres    false    253            @           2606    19325 $   act_ru_ext_task act_ru_ext_task_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_ru_ext_task
    ADD CONSTRAINT act_ru_ext_task_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_ru_ext_task DROP CONSTRAINT act_ru_ext_task_pkey;
       public            postgres    false    254            B           2606    19327     act_ru_filter act_ru_filter_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_ru_filter
    ADD CONSTRAINT act_ru_filter_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_ru_filter DROP CONSTRAINT act_ru_filter_pkey;
       public            postgres    false    255            H           2606    19329 ,   act_ru_identitylink act_ru_identitylink_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);
 V   ALTER TABLE ONLY public.act_ru_identitylink DROP CONSTRAINT act_ru_identitylink_pkey;
       public            postgres    false    256            R           2606    19331 $   act_ru_incident act_ru_incident_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_ru_incident_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_ru_incident_pkey;
       public            postgres    false    257            \           2606    19333    act_ru_job act_ru_job_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);
 D   ALTER TABLE ONLY public.act_ru_job DROP CONSTRAINT act_ru_job_pkey;
       public            postgres    false    258            `           2606    19335     act_ru_jobdef act_ru_jobdef_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.act_ru_jobdef
    ADD CONSTRAINT act_ru_jobdef_pkey PRIMARY KEY (id_);
 J   ALTER TABLE ONLY public.act_ru_jobdef DROP CONSTRAINT act_ru_jobdef_pkey;
       public            postgres    false    259            g           2606    19337 &   act_ru_meter_log act_ru_meter_log_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.act_ru_meter_log
    ADD CONSTRAINT act_ru_meter_log_pkey PRIMARY KEY (id_);
 P   ALTER TABLE ONLY public.act_ru_meter_log DROP CONSTRAINT act_ru_meter_log_pkey;
       public            postgres    false    260            v           2606    19339 0   act_ru_task_meter_log act_ru_task_meter_log_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.act_ru_task_meter_log
    ADD CONSTRAINT act_ru_task_meter_log_pkey PRIMARY KEY (id_);
 Z   ALTER TABLE ONLY public.act_ru_task_meter_log DROP CONSTRAINT act_ru_task_meter_log_pkey;
       public            postgres    false    262            s           2606    19341    act_ru_task act_ru_task_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);
 F   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_ru_task_pkey;
       public            postgres    false    261            �           2606    19343 $   act_ru_variable act_ru_variable_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);
 N   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_ru_variable_pkey;
       public            postgres    false    263                       2606    19345 (   act_ru_authorization act_uniq_auth_group 
   CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_group UNIQUE (type_, group_id_, resource_type_, resource_id_);
 R   ALTER TABLE ONLY public.act_ru_authorization DROP CONSTRAINT act_uniq_auth_group;
       public            postgres    false    248    248    248    248                       2606    19347 '   act_ru_authorization act_uniq_auth_user 
   CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_authorization
    ADD CONSTRAINT act_uniq_auth_user UNIQUE (type_, user_id_, resource_type_, resource_id_);
 Q   ALTER TABLE ONLY public.act_ru_authorization DROP CONSTRAINT act_uniq_auth_user;
       public            postgres    false    248    248    248    248            �           2606    19349 /   act_id_tenant_member act_uniq_tenant_memb_group 
   CONSTRAINT     {   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_group UNIQUE (tenant_id_, group_id_);
 Y   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_uniq_tenant_memb_group;
       public            postgres    false    240    240            �           2606    19351 .   act_id_tenant_member act_uniq_tenant_memb_user 
   CONSTRAINT     y   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_uniq_tenant_memb_user UNIQUE (tenant_id_, user_id_);
 X   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_uniq_tenant_memb_user;
       public            postgres    false    240    240            �           2606    19353 !   act_ru_variable act_uniq_variable 
   CONSTRAINT     i   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_uniq_variable UNIQUE (var_scope_, name_);
 K   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_uniq_variable;
       public            postgres    false    263    263            �           2606    19355 0   databasechangeloglock databasechangeloglock_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.databasechangeloglock DROP CONSTRAINT databasechangeloglock_pkey;
       public            postgres    false    265            �           2606    19357    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    266            �           2606    19359     jhi_authority jhi_authority_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.jhi_authority
    ADD CONSTRAINT jhi_authority_pkey PRIMARY KEY (name);
 J   ALTER TABLE ONLY public.jhi_authority DROP CONSTRAINT jhi_authority_pkey;
       public            postgres    false    267            �           2606    19361 *   jhi_user_authority jhi_user_authority_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT jhi_user_authority_pkey PRIMARY KEY (user_id, authority_name);
 T   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT jhi_user_authority_pkey;
       public            postgres    false    269    269            �           2606    19363    jhi_user jhi_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT jhi_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT jhi_user_pkey;
       public            postgres    false    268            �           2606    19365    job job_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
       public            postgres    false    270            �           2606    19367    jhi_user ux_user_email 
   CONSTRAINT     R   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT ux_user_email UNIQUE (email);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT ux_user_email;
       public            postgres    false    268            �           2606    19369    jhi_user ux_user_login 
   CONSTRAINT     R   ALTER TABLE ONLY public.jhi_user
    ADD CONSTRAINT ux_user_login UNIQUE (login);
 @   ALTER TABLE ONLY public.jhi_user DROP CONSTRAINT ux_user_login;
       public            postgres    false    268            Q           1259    19370    act_hi_bat_rm_time    INDEX     T   CREATE INDEX act_hi_bat_rm_time ON public.act_hi_batch USING btree (removal_time_);
 &   DROP INDEX public.act_hi_bat_rm_time;
       public            postgres    false    220            �           1259    19371     act_hi_ext_task_log_proc_def_key    INDEX     i   CREATE INDEX act_hi_ext_task_log_proc_def_key ON public.act_hi_ext_task_log USING btree (proc_def_key_);
 4   DROP INDEX public.act_hi_ext_task_log_proc_def_key;
       public            postgres    false    228            �           1259    19372    act_hi_ext_task_log_procdef    INDEX     c   CREATE INDEX act_hi_ext_task_log_procdef ON public.act_hi_ext_task_log USING btree (proc_def_id_);
 /   DROP INDEX public.act_hi_ext_task_log_procdef;
       public            postgres    false    228            �           1259    19373    act_hi_ext_task_log_procinst    INDEX     e   CREATE INDEX act_hi_ext_task_log_procinst ON public.act_hi_ext_task_log USING btree (proc_inst_id_);
 0   DROP INDEX public.act_hi_ext_task_log_procinst;
       public            postgres    false    228            �           1259    19374    act_hi_ext_task_log_rm_time    INDEX     d   CREATE INDEX act_hi_ext_task_log_rm_time ON public.act_hi_ext_task_log USING btree (removal_time_);
 /   DROP INDEX public.act_hi_ext_task_log_rm_time;
       public            postgres    false    228            �           1259    19375    act_hi_ext_task_log_root_pi    INDEX     i   CREATE INDEX act_hi_ext_task_log_root_pi ON public.act_hi_ext_task_log USING btree (root_proc_inst_id_);
 /   DROP INDEX public.act_hi_ext_task_log_root_pi;
       public            postgres    false    228            �           1259    19376    act_hi_ext_task_log_tenant_id    INDEX     c   CREATE INDEX act_hi_ext_task_log_tenant_id ON public.act_hi_ext_task_log USING btree (tenant_id_);
 1   DROP INDEX public.act_hi_ext_task_log_tenant_id;
       public            postgres    false    228            C           1259    19377    act_idx_athrz_procedef    INDEX     ^   CREATE INDEX act_idx_athrz_procedef ON public.act_ru_identitylink USING btree (proc_def_id_);
 *   DROP INDEX public.act_idx_athrz_procedef;
       public            postgres    false    256                       1259    19378    act_idx_auth_group_id    INDEX     [   CREATE INDEX act_idx_auth_group_id ON public.act_ru_authorization USING btree (group_id_);
 )   DROP INDEX public.act_idx_auth_group_id;
       public            postgres    false    248                       1259    19379    act_idx_auth_resource_id    INDEX     a   CREATE INDEX act_idx_auth_resource_id ON public.act_ru_authorization USING btree (resource_id_);
 ,   DROP INDEX public.act_idx_auth_resource_id;
       public            postgres    false    248                       1259    19380    act_idx_auth_rm_time    INDEX     ^   CREATE INDEX act_idx_auth_rm_time ON public.act_ru_authorization USING btree (removal_time_);
 (   DROP INDEX public.act_idx_auth_rm_time;
       public            postgres    false    248                       1259    19381    act_idx_auth_root_pi    INDEX     c   CREATE INDEX act_idx_auth_root_pi ON public.act_ru_authorization USING btree (root_proc_inst_id_);
 (   DROP INDEX public.act_idx_auth_root_pi;
       public            postgres    false    248            w           1259    19382    act_idx_batch_id    INDEX     Q   CREATE INDEX act_idx_batch_id ON public.act_ru_variable USING btree (batch_id_);
 $   DROP INDEX public.act_idx_batch_id;
       public            postgres    false    263                       1259    19383    act_idx_batch_job_def    INDEX     [   CREATE INDEX act_idx_batch_job_def ON public.act_ru_batch USING btree (batch_job_def_id_);
 )   DROP INDEX public.act_idx_batch_job_def;
       public            postgres    false    249                       1259    19384    act_idx_batch_monitor_job_def    INDEX     e   CREATE INDEX act_idx_batch_monitor_job_def ON public.act_ru_batch USING btree (monitor_job_def_id_);
 1   DROP INDEX public.act_idx_batch_monitor_job_def;
       public            postgres    false    249                       1259    19385    act_idx_batch_seed_job_def    INDEX     _   CREATE INDEX act_idx_batch_seed_job_def ON public.act_ru_batch USING btree (seed_job_def_id_);
 .   DROP INDEX public.act_idx_batch_seed_job_def;
       public            postgres    false    249            6           1259    19386    act_idx_bytear_depl    INDEX     Z   CREATE INDEX act_idx_bytear_depl ON public.act_ge_bytearray USING btree (deployment_id_);
 '   DROP INDEX public.act_idx_bytear_depl;
       public            postgres    false    215            7           1259    19387    act_idx_bytearray_name    INDEX     T   CREATE INDEX act_idx_bytearray_name ON public.act_ge_bytearray USING btree (name_);
 *   DROP INDEX public.act_idx_bytearray_name;
       public            postgres    false    215            8           1259    19388    act_idx_bytearray_rm_time    INDEX     _   CREATE INDEX act_idx_bytearray_rm_time ON public.act_ge_bytearray USING btree (removal_time_);
 -   DROP INDEX public.act_idx_bytearray_rm_time;
       public            postgres    false    215            9           1259    19389    act_idx_bytearray_root_pi    INDEX     d   CREATE INDEX act_idx_bytearray_root_pi ON public.act_ge_bytearray USING btree (root_proc_inst_id_);
 -   DROP INDEX public.act_idx_bytearray_root_pi;
       public            postgres    false    215            �           1259    19390    act_idx_case_def_tenant_id    INDEX     \   CREATE INDEX act_idx_case_def_tenant_id ON public.act_re_case_def USING btree (tenant_id_);
 .   DROP INDEX public.act_idx_case_def_tenant_id;
       public            postgres    false    243                        1259    19391    act_idx_case_exe_case_def    INDEX     c   CREATE INDEX act_idx_case_exe_case_def ON public.act_ru_case_execution USING btree (case_def_id_);
 -   DROP INDEX public.act_idx_case_exe_case_def;
       public            postgres    false    250            !           1259    19392    act_idx_case_exe_case_inst    INDEX     e   CREATE INDEX act_idx_case_exe_case_inst ON public.act_ru_case_execution USING btree (case_inst_id_);
 .   DROP INDEX public.act_idx_case_exe_case_inst;
       public            postgres    false    250            "           1259    19393    act_idx_case_exe_parent    INDEX     _   CREATE INDEX act_idx_case_exe_parent ON public.act_ru_case_execution USING btree (parent_id_);
 +   DROP INDEX public.act_idx_case_exe_parent;
       public            postgres    false    250            #           1259    19394    act_idx_case_exec_buskey    INDEX     c   CREATE INDEX act_idx_case_exec_buskey ON public.act_ru_case_execution USING btree (business_key_);
 ,   DROP INDEX public.act_idx_case_exec_buskey;
       public            postgres    false    250            $           1259    19395    act_idx_case_exec_tenant_id    INDEX     c   CREATE INDEX act_idx_case_exec_tenant_id ON public.act_ru_case_execution USING btree (tenant_id_);
 /   DROP INDEX public.act_idx_case_exec_tenant_id;
       public            postgres    false    250            '           1259    19396    act_idx_case_sentry_case_exec    INDEX     j   CREATE INDEX act_idx_case_sentry_case_exec ON public.act_ru_case_sentry_part USING btree (case_exec_id_);
 1   DROP INDEX public.act_idx_case_sentry_case_exec;
       public            postgres    false    251            (           1259    19397    act_idx_case_sentry_case_inst    INDEX     j   CREATE INDEX act_idx_case_sentry_case_inst ON public.act_ru_case_sentry_part USING btree (case_inst_id_);
 1   DROP INDEX public.act_idx_case_sentry_case_inst;
       public            postgres    false    251                       1259    19398    act_idx_dec_def_req_id    INDEX     ]   CREATE INDEX act_idx_dec_def_req_id ON public.act_re_decision_def USING btree (dec_req_id_);
 *   DROP INDEX public.act_idx_dec_def_req_id;
       public            postgres    false    244                       1259    19399    act_idx_dec_def_tenant_id    INDEX     _   CREATE INDEX act_idx_dec_def_tenant_id ON public.act_re_decision_def USING btree (tenant_id_);
 -   DROP INDEX public.act_idx_dec_def_tenant_id;
       public            postgres    false    244                       1259    19400    act_idx_dec_req_def_tenant_id    INDEX     g   CREATE INDEX act_idx_dec_req_def_tenant_id ON public.act_re_decision_req_def USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_dec_req_def_tenant_id;
       public            postgres    false    245                       1259    19401    act_idx_deployment_name    INDEX     V   CREATE INDEX act_idx_deployment_name ON public.act_re_deployment USING btree (name_);
 +   DROP INDEX public.act_idx_deployment_name;
       public            postgres    false    246            	           1259    19402    act_idx_deployment_tenant_id    INDEX     `   CREATE INDEX act_idx_deployment_tenant_id ON public.act_re_deployment USING btree (tenant_id_);
 0   DROP INDEX public.act_idx_deployment_tenant_id;
       public            postgres    false    246            +           1259    19403    act_idx_event_subscr    INDEX     ]   CREATE INDEX act_idx_event_subscr ON public.act_ru_event_subscr USING btree (execution_id_);
 (   DROP INDEX public.act_idx_event_subscr;
       public            postgres    false    252            ,           1259    19404    act_idx_event_subscr_config_    INDEX     f   CREATE INDEX act_idx_event_subscr_config_ ON public.act_ru_event_subscr USING btree (configuration_);
 0   DROP INDEX public.act_idx_event_subscr_config_;
       public            postgres    false    252            -           1259    19405    act_idx_event_subscr_evt_name    INDEX     d   CREATE INDEX act_idx_event_subscr_evt_name ON public.act_ru_event_subscr USING btree (event_name_);
 1   DROP INDEX public.act_idx_event_subscr_evt_name;
       public            postgres    false    252            .           1259    19406    act_idx_event_subscr_tenant_id    INDEX     d   CREATE INDEX act_idx_event_subscr_tenant_id ON public.act_ru_event_subscr USING btree (tenant_id_);
 2   DROP INDEX public.act_idx_event_subscr_tenant_id;
       public            postgres    false    252            1           1259    19407    act_idx_exe_parent    INDEX     U   CREATE INDEX act_idx_exe_parent ON public.act_ru_execution USING btree (parent_id_);
 &   DROP INDEX public.act_idx_exe_parent;
       public            postgres    false    253            2           1259    19408    act_idx_exe_procdef    INDEX     X   CREATE INDEX act_idx_exe_procdef ON public.act_ru_execution USING btree (proc_def_id_);
 '   DROP INDEX public.act_idx_exe_procdef;
       public            postgres    false    253            3           1259    19409    act_idx_exe_procinst    INDEX     Z   CREATE INDEX act_idx_exe_procinst ON public.act_ru_execution USING btree (proc_inst_id_);
 (   DROP INDEX public.act_idx_exe_procinst;
       public            postgres    false    253            4           1259    19410    act_idx_exe_root_pi    INDEX     ^   CREATE INDEX act_idx_exe_root_pi ON public.act_ru_execution USING btree (root_proc_inst_id_);
 '   DROP INDEX public.act_idx_exe_root_pi;
       public            postgres    false    253            5           1259    19411    act_idx_exe_super    INDEX     U   CREATE INDEX act_idx_exe_super ON public.act_ru_execution USING btree (super_exec_);
 %   DROP INDEX public.act_idx_exe_super;
       public            postgres    false    253            6           1259    19412    act_idx_exec_buskey    INDEX     Y   CREATE INDEX act_idx_exec_buskey ON public.act_ru_execution USING btree (business_key_);
 '   DROP INDEX public.act_idx_exec_buskey;
       public            postgres    false    253            7           1259    19413    act_idx_exec_tenant_id    INDEX     Y   CREATE INDEX act_idx_exec_tenant_id ON public.act_ru_execution USING btree (tenant_id_);
 *   DROP INDEX public.act_idx_exec_tenant_id;
       public            postgres    false    253            :           1259    19414    act_idx_ext_task_err_details    INDEX     e   CREATE INDEX act_idx_ext_task_err_details ON public.act_ru_ext_task USING btree (error_details_id_);
 0   DROP INDEX public.act_idx_ext_task_err_details;
       public            postgres    false    254            ;           1259    19415    act_idx_ext_task_exec    INDEX     Z   CREATE INDEX act_idx_ext_task_exec ON public.act_ru_ext_task USING btree (execution_id_);
 )   DROP INDEX public.act_idx_ext_task_exec;
       public            postgres    false    254            <           1259    19416    act_idx_ext_task_priority    INDEX     Z   CREATE INDEX act_idx_ext_task_priority ON public.act_ru_ext_task USING btree (priority_);
 -   DROP INDEX public.act_idx_ext_task_priority;
       public            postgres    false    254            =           1259    19417    act_idx_ext_task_tenant_id    INDEX     \   CREATE INDEX act_idx_ext_task_tenant_id ON public.act_ru_ext_task USING btree (tenant_id_);
 .   DROP INDEX public.act_idx_ext_task_tenant_id;
       public            postgres    false    254            >           1259    19418    act_idx_ext_task_topic    INDEX     Y   CREATE INDEX act_idx_ext_task_topic ON public.act_ru_ext_task USING btree (topic_name_);
 *   DROP INDEX public.act_idx_ext_task_topic;
       public            postgres    false    254            @           1259    19419    act_idx_hi_act_inst_comp    INDEX     u   CREATE INDEX act_idx_hi_act_inst_comp ON public.act_hi_actinst USING btree (execution_id_, act_id_, end_time_, id_);
 ,   DROP INDEX public.act_idx_hi_act_inst_comp;
       public            postgres    false    218    218    218    218            A           1259    19420    act_idx_hi_act_inst_end    INDEX     W   CREATE INDEX act_idx_hi_act_inst_end ON public.act_hi_actinst USING btree (end_time_);
 +   DROP INDEX public.act_idx_hi_act_inst_end;
       public            postgres    false    218            B           1259    19421     act_idx_hi_act_inst_proc_def_key    INDEX     d   CREATE INDEX act_idx_hi_act_inst_proc_def_key ON public.act_hi_actinst USING btree (proc_def_key_);
 4   DROP INDEX public.act_idx_hi_act_inst_proc_def_key;
       public            postgres    false    218            C           1259    19422    act_idx_hi_act_inst_procinst    INDEX     i   CREATE INDEX act_idx_hi_act_inst_procinst ON public.act_hi_actinst USING btree (proc_inst_id_, act_id_);
 0   DROP INDEX public.act_idx_hi_act_inst_procinst;
       public            postgres    false    218    218            D           1259    19423    act_idx_hi_act_inst_rm_time    INDEX     _   CREATE INDEX act_idx_hi_act_inst_rm_time ON public.act_hi_actinst USING btree (removal_time_);
 /   DROP INDEX public.act_idx_hi_act_inst_rm_time;
       public            postgres    false    218            E           1259    19424    act_idx_hi_act_inst_start_end    INDEX     j   CREATE INDEX act_idx_hi_act_inst_start_end ON public.act_hi_actinst USING btree (start_time_, end_time_);
 1   DROP INDEX public.act_idx_hi_act_inst_start_end;
       public            postgres    false    218    218            F           1259    19425    act_idx_hi_act_inst_stats    INDEX     �   CREATE INDEX act_idx_hi_act_inst_stats ON public.act_hi_actinst USING btree (proc_def_id_, proc_inst_id_, act_id_, end_time_, act_inst_state_);
 -   DROP INDEX public.act_idx_hi_act_inst_stats;
       public            postgres    false    218    218    218    218    218            G           1259    19426    act_idx_hi_act_inst_tenant_id    INDEX     ^   CREATE INDEX act_idx_hi_act_inst_tenant_id ON public.act_hi_actinst USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_hi_act_inst_tenant_id;
       public            postgres    false    218            H           1259    19427    act_idx_hi_actinst_root_pi    INDEX     c   CREATE INDEX act_idx_hi_actinst_root_pi ON public.act_hi_actinst USING btree (root_proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_actinst_root_pi;
       public            postgres    false    218            I           1259    19428    act_idx_hi_ai_pdefid_end_time    INDEX     k   CREATE INDEX act_idx_hi_ai_pdefid_end_time ON public.act_hi_actinst USING btree (proc_def_id_, end_time_);
 1   DROP INDEX public.act_idx_hi_ai_pdefid_end_time;
       public            postgres    false    218    218            L           1259    19429    act_idx_hi_attachment_content    INDEX     b   CREATE INDEX act_idx_hi_attachment_content ON public.act_hi_attachment USING btree (content_id_);
 1   DROP INDEX public.act_idx_hi_attachment_content;
       public            postgres    false    219            M           1259    19430    act_idx_hi_attachment_procinst    INDEX     e   CREATE INDEX act_idx_hi_attachment_procinst ON public.act_hi_attachment USING btree (proc_inst_id_);
 2   DROP INDEX public.act_idx_hi_attachment_procinst;
       public            postgres    false    219            N           1259    19431    act_idx_hi_attachment_rm_time    INDEX     d   CREATE INDEX act_idx_hi_attachment_rm_time ON public.act_hi_attachment USING btree (removal_time_);
 1   DROP INDEX public.act_idx_hi_attachment_rm_time;
       public            postgres    false    219            O           1259    19432    act_idx_hi_attachment_root_pi    INDEX     i   CREATE INDEX act_idx_hi_attachment_root_pi ON public.act_hi_attachment USING btree (root_proc_inst_id_);
 1   DROP INDEX public.act_idx_hi_attachment_root_pi;
       public            postgres    false    219            P           1259    19433    act_idx_hi_attachment_task    INDEX     \   CREATE INDEX act_idx_hi_attachment_task ON public.act_hi_attachment USING btree (task_id_);
 .   DROP INDEX public.act_idx_hi_attachment_task;
       public            postgres    false    219            V           1259    19434    act_idx_hi_cas_a_i_comp    INDEX     n   CREATE INDEX act_idx_hi_cas_a_i_comp ON public.act_hi_caseactinst USING btree (case_act_id_, end_time_, id_);
 +   DROP INDEX public.act_idx_hi_cas_a_i_comp;
       public            postgres    false    221    221    221            W           1259    19435    act_idx_hi_cas_a_i_create    INDEX     `   CREATE INDEX act_idx_hi_cas_a_i_create ON public.act_hi_caseactinst USING btree (create_time_);
 -   DROP INDEX public.act_idx_hi_cas_a_i_create;
       public            postgres    false    221            X           1259    19436    act_idx_hi_cas_a_i_end    INDEX     Z   CREATE INDEX act_idx_hi_cas_a_i_end ON public.act_hi_caseactinst USING btree (end_time_);
 *   DROP INDEX public.act_idx_hi_cas_a_i_end;
       public            postgres    false    221            Y           1259    19437    act_idx_hi_cas_a_i_tenant_id    INDEX     a   CREATE INDEX act_idx_hi_cas_a_i_tenant_id ON public.act_hi_caseactinst USING btree (tenant_id_);
 0   DROP INDEX public.act_idx_hi_cas_a_i_tenant_id;
       public            postgres    false    221            ^           1259    19438    act_idx_hi_cas_i_buskey    INDEX     \   CREATE INDEX act_idx_hi_cas_i_buskey ON public.act_hi_caseinst USING btree (business_key_);
 +   DROP INDEX public.act_idx_hi_cas_i_buskey;
       public            postgres    false    222            _           1259    19439    act_idx_hi_cas_i_close    INDEX     Y   CREATE INDEX act_idx_hi_cas_i_close ON public.act_hi_caseinst USING btree (close_time_);
 *   DROP INDEX public.act_idx_hi_cas_i_close;
       public            postgres    false    222            `           1259    19440    act_idx_hi_cas_i_tenant_id    INDEX     \   CREATE INDEX act_idx_hi_cas_i_tenant_id ON public.act_hi_caseinst USING btree (tenant_id_);
 .   DROP INDEX public.act_idx_hi_cas_i_tenant_id;
       public            postgres    false    222            �           1259    19441    act_idx_hi_casevar_case_inst    INDEX     `   CREATE INDEX act_idx_hi_casevar_case_inst ON public.act_hi_varinst USING btree (case_inst_id_);
 0   DROP INDEX public.act_idx_hi_casevar_case_inst;
       public            postgres    false    235            c           1259    19442    act_idx_hi_comment_procinst    INDEX     _   CREATE INDEX act_idx_hi_comment_procinst ON public.act_hi_comment USING btree (proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_comment_procinst;
       public            postgres    false    223            d           1259    19443    act_idx_hi_comment_rm_time    INDEX     ^   CREATE INDEX act_idx_hi_comment_rm_time ON public.act_hi_comment USING btree (removal_time_);
 .   DROP INDEX public.act_idx_hi_comment_rm_time;
       public            postgres    false    223            e           1259    19444    act_idx_hi_comment_root_pi    INDEX     c   CREATE INDEX act_idx_hi_comment_root_pi ON public.act_hi_comment USING btree (root_proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_comment_root_pi;
       public            postgres    false    223            f           1259    19445    act_idx_hi_comment_task    INDEX     V   CREATE INDEX act_idx_hi_comment_task ON public.act_hi_comment USING btree (task_id_);
 +   DROP INDEX public.act_idx_hi_comment_task;
       public            postgres    false    223            i           1259    19446    act_idx_hi_dec_in_clause    INDEX     f   CREATE INDEX act_idx_hi_dec_in_clause ON public.act_hi_dec_in USING btree (dec_inst_id_, clause_id_);
 ,   DROP INDEX public.act_idx_hi_dec_in_clause;
       public            postgres    false    224    224            j           1259    19447    act_idx_hi_dec_in_inst    INDEX     X   CREATE INDEX act_idx_hi_dec_in_inst ON public.act_hi_dec_in USING btree (dec_inst_id_);
 *   DROP INDEX public.act_idx_hi_dec_in_inst;
       public            postgres    false    224            k           1259    19448    act_idx_hi_dec_in_rm_time    INDEX     \   CREATE INDEX act_idx_hi_dec_in_rm_time ON public.act_hi_dec_in USING btree (removal_time_);
 -   DROP INDEX public.act_idx_hi_dec_in_rm_time;
       public            postgres    false    224            l           1259    19449    act_idx_hi_dec_in_root_pi    INDEX     a   CREATE INDEX act_idx_hi_dec_in_root_pi ON public.act_hi_dec_in USING btree (root_proc_inst_id_);
 -   DROP INDEX public.act_idx_hi_dec_in_root_pi;
       public            postgres    false    224            u           1259    19450    act_idx_hi_dec_inst_act    INDEX     U   CREATE INDEX act_idx_hi_dec_inst_act ON public.act_hi_decinst USING btree (act_id_);
 +   DROP INDEX public.act_idx_hi_dec_inst_act;
       public            postgres    false    226            v           1259    19451    act_idx_hi_dec_inst_act_inst    INDEX     _   CREATE INDEX act_idx_hi_dec_inst_act_inst ON public.act_hi_decinst USING btree (act_inst_id_);
 0   DROP INDEX public.act_idx_hi_dec_inst_act_inst;
       public            postgres    false    226            w           1259    19452    act_idx_hi_dec_inst_ci    INDEX     Z   CREATE INDEX act_idx_hi_dec_inst_ci ON public.act_hi_decinst USING btree (case_inst_id_);
 *   DROP INDEX public.act_idx_hi_dec_inst_ci;
       public            postgres    false    226            x           1259    19453    act_idx_hi_dec_inst_id    INDEX     X   CREATE INDEX act_idx_hi_dec_inst_id ON public.act_hi_decinst USING btree (dec_def_id_);
 *   DROP INDEX public.act_idx_hi_dec_inst_id;
       public            postgres    false    226            y           1259    19454    act_idx_hi_dec_inst_key    INDEX     Z   CREATE INDEX act_idx_hi_dec_inst_key ON public.act_hi_decinst USING btree (dec_def_key_);
 +   DROP INDEX public.act_idx_hi_dec_inst_key;
       public            postgres    false    226            z           1259    19455    act_idx_hi_dec_inst_pi    INDEX     Z   CREATE INDEX act_idx_hi_dec_inst_pi ON public.act_hi_decinst USING btree (proc_inst_id_);
 *   DROP INDEX public.act_idx_hi_dec_inst_pi;
       public            postgres    false    226            {           1259    19456    act_idx_hi_dec_inst_req_id    INDEX     \   CREATE INDEX act_idx_hi_dec_inst_req_id ON public.act_hi_decinst USING btree (dec_req_id_);
 .   DROP INDEX public.act_idx_hi_dec_inst_req_id;
       public            postgres    false    226            |           1259    19457    act_idx_hi_dec_inst_req_key    INDEX     ^   CREATE INDEX act_idx_hi_dec_inst_req_key ON public.act_hi_decinst USING btree (dec_req_key_);
 /   DROP INDEX public.act_idx_hi_dec_inst_req_key;
       public            postgres    false    226            }           1259    19458    act_idx_hi_dec_inst_rm_time    INDEX     _   CREATE INDEX act_idx_hi_dec_inst_rm_time ON public.act_hi_decinst USING btree (removal_time_);
 /   DROP INDEX public.act_idx_hi_dec_inst_rm_time;
       public            postgres    false    226            ~           1259    19459    act_idx_hi_dec_inst_root_id    INDEX     c   CREATE INDEX act_idx_hi_dec_inst_root_id ON public.act_hi_decinst USING btree (root_dec_inst_id_);
 /   DROP INDEX public.act_idx_hi_dec_inst_root_id;
       public            postgres    false    226                       1259    19460    act_idx_hi_dec_inst_root_pi    INDEX     d   CREATE INDEX act_idx_hi_dec_inst_root_pi ON public.act_hi_decinst USING btree (root_proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_dec_inst_root_pi;
       public            postgres    false    226            �           1259    19461    act_idx_hi_dec_inst_tenant_id    INDEX     ^   CREATE INDEX act_idx_hi_dec_inst_tenant_id ON public.act_hi_decinst USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_hi_dec_inst_tenant_id;
       public            postgres    false    226            �           1259    19462    act_idx_hi_dec_inst_time    INDEX     Y   CREATE INDEX act_idx_hi_dec_inst_time ON public.act_hi_decinst USING btree (eval_time_);
 ,   DROP INDEX public.act_idx_hi_dec_inst_time;
       public            postgres    false    226            o           1259    19463    act_idx_hi_dec_out_inst    INDEX     Z   CREATE INDEX act_idx_hi_dec_out_inst ON public.act_hi_dec_out USING btree (dec_inst_id_);
 +   DROP INDEX public.act_idx_hi_dec_out_inst;
       public            postgres    false    225            p           1259    19464    act_idx_hi_dec_out_rm_time    INDEX     ^   CREATE INDEX act_idx_hi_dec_out_rm_time ON public.act_hi_dec_out USING btree (removal_time_);
 .   DROP INDEX public.act_idx_hi_dec_out_rm_time;
       public            postgres    false    225            q           1259    19465    act_idx_hi_dec_out_root_pi    INDEX     c   CREATE INDEX act_idx_hi_dec_out_root_pi ON public.act_hi_dec_out USING btree (root_proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_dec_out_root_pi;
       public            postgres    false    225            r           1259    19466    act_idx_hi_dec_out_rule    INDEX     e   CREATE INDEX act_idx_hi_dec_out_rule ON public.act_hi_dec_out USING btree (rule_order_, clause_id_);
 +   DROP INDEX public.act_idx_hi_dec_out_rule;
       public            postgres    false    225    225            �           1259    19467    act_idx_hi_detail_act_inst    INDEX     \   CREATE INDEX act_idx_hi_detail_act_inst ON public.act_hi_detail USING btree (act_inst_id_);
 .   DROP INDEX public.act_idx_hi_detail_act_inst;
       public            postgres    false    227            �           1259    19468    act_idx_hi_detail_bytear    INDEX     [   CREATE INDEX act_idx_hi_detail_bytear ON public.act_hi_detail USING btree (bytearray_id_);
 ,   DROP INDEX public.act_idx_hi_detail_bytear;
       public            postgres    false    227            �           1259    19469    act_idx_hi_detail_case_exec    INDEX     c   CREATE INDEX act_idx_hi_detail_case_exec ON public.act_hi_detail USING btree (case_execution_id_);
 /   DROP INDEX public.act_idx_hi_detail_case_exec;
       public            postgres    false    227            �           1259    19470    act_idx_hi_detail_case_inst    INDEX     ^   CREATE INDEX act_idx_hi_detail_case_inst ON public.act_hi_detail USING btree (case_inst_id_);
 /   DROP INDEX public.act_idx_hi_detail_case_inst;
       public            postgres    false    227            �           1259    19471    act_idx_hi_detail_name    INDEX     Q   CREATE INDEX act_idx_hi_detail_name ON public.act_hi_detail USING btree (name_);
 *   DROP INDEX public.act_idx_hi_detail_name;
       public            postgres    false    227            �           1259    19472    act_idx_hi_detail_proc_def_key    INDEX     a   CREATE INDEX act_idx_hi_detail_proc_def_key ON public.act_hi_detail USING btree (proc_def_key_);
 2   DROP INDEX public.act_idx_hi_detail_proc_def_key;
       public            postgres    false    227            �           1259    19473    act_idx_hi_detail_proc_inst    INDEX     ^   CREATE INDEX act_idx_hi_detail_proc_inst ON public.act_hi_detail USING btree (proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_detail_proc_inst;
       public            postgres    false    227            �           1259    19474    act_idx_hi_detail_rm_time    INDEX     \   CREATE INDEX act_idx_hi_detail_rm_time ON public.act_hi_detail USING btree (removal_time_);
 -   DROP INDEX public.act_idx_hi_detail_rm_time;
       public            postgres    false    227            �           1259    19475    act_idx_hi_detail_root_pi    INDEX     a   CREATE INDEX act_idx_hi_detail_root_pi ON public.act_hi_detail USING btree (root_proc_inst_id_);
 -   DROP INDEX public.act_idx_hi_detail_root_pi;
       public            postgres    false    227            �           1259    19476    act_idx_hi_detail_task_bytear    INDEX     j   CREATE INDEX act_idx_hi_detail_task_bytear ON public.act_hi_detail USING btree (bytearray_id_, task_id_);
 1   DROP INDEX public.act_idx_hi_detail_task_bytear;
       public            postgres    false    227    227            �           1259    19477    act_idx_hi_detail_task_id    INDEX     W   CREATE INDEX act_idx_hi_detail_task_id ON public.act_hi_detail USING btree (task_id_);
 -   DROP INDEX public.act_idx_hi_detail_task_id;
       public            postgres    false    227            �           1259    19478    act_idx_hi_detail_tenant_id    INDEX     [   CREATE INDEX act_idx_hi_detail_tenant_id ON public.act_hi_detail USING btree (tenant_id_);
 /   DROP INDEX public.act_idx_hi_detail_tenant_id;
       public            postgres    false    227            �           1259    19479    act_idx_hi_detail_time    INDEX     Q   CREATE INDEX act_idx_hi_detail_time ON public.act_hi_detail USING btree (time_);
 *   DROP INDEX public.act_idx_hi_detail_time;
       public            postgres    false    227            �           1259    19480    act_idx_hi_detail_var_inst_id    INDEX     _   CREATE INDEX act_idx_hi_detail_var_inst_id ON public.act_hi_detail USING btree (var_inst_id_);
 1   DROP INDEX public.act_idx_hi_detail_var_inst_id;
       public            postgres    false    227            �           1259    19481    act_idx_hi_exttasklog_errordet    INDEX     k   CREATE INDEX act_idx_hi_exttasklog_errordet ON public.act_hi_ext_task_log USING btree (error_details_id_);
 2   DROP INDEX public.act_idx_hi_exttasklog_errordet;
       public            postgres    false    228            �           1259    19482    act_idx_hi_ident_link_rm_time    INDEX     f   CREATE INDEX act_idx_hi_ident_link_rm_time ON public.act_hi_identitylink USING btree (removal_time_);
 1   DROP INDEX public.act_idx_hi_ident_link_rm_time;
       public            postgres    false    229            �           1259    19483    act_idx_hi_ident_link_task    INDEX     ^   CREATE INDEX act_idx_hi_ident_link_task ON public.act_hi_identitylink USING btree (task_id_);
 .   DROP INDEX public.act_idx_hi_ident_link_task;
       public            postgres    false    229            �           1259    19484    act_idx_hi_ident_lnk_group    INDEX     _   CREATE INDEX act_idx_hi_ident_lnk_group ON public.act_hi_identitylink USING btree (group_id_);
 .   DROP INDEX public.act_idx_hi_ident_lnk_group;
       public            postgres    false    229            �           1259    19485 !   act_idx_hi_ident_lnk_proc_def_key    INDEX     j   CREATE INDEX act_idx_hi_ident_lnk_proc_def_key ON public.act_hi_identitylink USING btree (proc_def_key_);
 5   DROP INDEX public.act_idx_hi_ident_lnk_proc_def_key;
       public            postgres    false    229            �           1259    19486    act_idx_hi_ident_lnk_root_pi    INDEX     j   CREATE INDEX act_idx_hi_ident_lnk_root_pi ON public.act_hi_identitylink USING btree (root_proc_inst_id_);
 0   DROP INDEX public.act_idx_hi_ident_lnk_root_pi;
       public            postgres    false    229            �           1259    19487    act_idx_hi_ident_lnk_tenant_id    INDEX     d   CREATE INDEX act_idx_hi_ident_lnk_tenant_id ON public.act_hi_identitylink USING btree (tenant_id_);
 2   DROP INDEX public.act_idx_hi_ident_lnk_tenant_id;
       public            postgres    false    229            �           1259    19488    act_idx_hi_ident_lnk_timestamp    INDEX     d   CREATE INDEX act_idx_hi_ident_lnk_timestamp ON public.act_hi_identitylink USING btree (timestamp_);
 2   DROP INDEX public.act_idx_hi_ident_lnk_timestamp;
       public            postgres    false    229            �           1259    19489    act_idx_hi_ident_lnk_user    INDEX     ]   CREATE INDEX act_idx_hi_ident_lnk_user ON public.act_hi_identitylink USING btree (user_id_);
 -   DROP INDEX public.act_idx_hi_ident_lnk_user;
       public            postgres    false    229            �           1259    19490    act_idx_hi_incident_create_time    INDEX     c   CREATE INDEX act_idx_hi_incident_create_time ON public.act_hi_incident USING btree (create_time_);
 3   DROP INDEX public.act_idx_hi_incident_create_time;
       public            postgres    false    230            �           1259    19491    act_idx_hi_incident_end_time    INDEX     ]   CREATE INDEX act_idx_hi_incident_end_time ON public.act_hi_incident USING btree (end_time_);
 0   DROP INDEX public.act_idx_hi_incident_end_time;
       public            postgres    false    230            �           1259    19492     act_idx_hi_incident_proc_def_key    INDEX     e   CREATE INDEX act_idx_hi_incident_proc_def_key ON public.act_hi_incident USING btree (proc_def_key_);
 4   DROP INDEX public.act_idx_hi_incident_proc_def_key;
       public            postgres    false    230            �           1259    19493    act_idx_hi_incident_procinst    INDEX     a   CREATE INDEX act_idx_hi_incident_procinst ON public.act_hi_incident USING btree (proc_inst_id_);
 0   DROP INDEX public.act_idx_hi_incident_procinst;
       public            postgres    false    230            �           1259    19494    act_idx_hi_incident_rm_time    INDEX     `   CREATE INDEX act_idx_hi_incident_rm_time ON public.act_hi_incident USING btree (removal_time_);
 /   DROP INDEX public.act_idx_hi_incident_rm_time;
       public            postgres    false    230            �           1259    19495    act_idx_hi_incident_root_pi    INDEX     e   CREATE INDEX act_idx_hi_incident_root_pi ON public.act_hi_incident USING btree (root_proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_incident_root_pi;
       public            postgres    false    230            �           1259    19496    act_idx_hi_incident_tenant_id    INDEX     _   CREATE INDEX act_idx_hi_incident_tenant_id ON public.act_hi_incident USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_hi_incident_tenant_id;
       public            postgres    false    230            �           1259    19497    act_idx_hi_job_log_ex_stack    INDEX     i   CREATE INDEX act_idx_hi_job_log_ex_stack ON public.act_hi_job_log USING btree (job_exception_stack_id_);
 /   DROP INDEX public.act_idx_hi_job_log_ex_stack;
       public            postgres    false    231            �           1259    19498    act_idx_hi_job_log_job_conf    INDEX     h   CREATE INDEX act_idx_hi_job_log_job_conf ON public.act_hi_job_log USING btree (job_def_configuration_);
 /   DROP INDEX public.act_idx_hi_job_log_job_conf;
       public            postgres    false    231            �           1259    19499    act_idx_hi_job_log_job_def_id    INDEX     _   CREATE INDEX act_idx_hi_job_log_job_def_id ON public.act_hi_job_log USING btree (job_def_id_);
 1   DROP INDEX public.act_idx_hi_job_log_job_def_id;
       public            postgres    false    231            �           1259    19500    act_idx_hi_job_log_proc_def_key    INDEX     f   CREATE INDEX act_idx_hi_job_log_proc_def_key ON public.act_hi_job_log USING btree (process_def_key_);
 3   DROP INDEX public.act_idx_hi_job_log_proc_def_key;
       public            postgres    false    231            �           1259    19501    act_idx_hi_job_log_procdef    INDEX     `   CREATE INDEX act_idx_hi_job_log_procdef ON public.act_hi_job_log USING btree (process_def_id_);
 .   DROP INDEX public.act_idx_hi_job_log_procdef;
       public            postgres    false    231            �           1259    19502    act_idx_hi_job_log_procinst    INDEX     f   CREATE INDEX act_idx_hi_job_log_procinst ON public.act_hi_job_log USING btree (process_instance_id_);
 /   DROP INDEX public.act_idx_hi_job_log_procinst;
       public            postgres    false    231            �           1259    19503    act_idx_hi_job_log_rm_time    INDEX     ^   CREATE INDEX act_idx_hi_job_log_rm_time ON public.act_hi_job_log USING btree (removal_time_);
 .   DROP INDEX public.act_idx_hi_job_log_rm_time;
       public            postgres    false    231            �           1259    19504    act_idx_hi_job_log_root_pi    INDEX     c   CREATE INDEX act_idx_hi_job_log_root_pi ON public.act_hi_job_log USING btree (root_proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_job_log_root_pi;
       public            postgres    false    231            �           1259    19505    act_idx_hi_job_log_tenant_id    INDEX     ]   CREATE INDEX act_idx_hi_job_log_tenant_id ON public.act_hi_job_log USING btree (tenant_id_);
 0   DROP INDEX public.act_idx_hi_job_log_tenant_id;
       public            postgres    false    231            �           1259    19506    act_idx_hi_op_log_entity_type    INDEX     _   CREATE INDEX act_idx_hi_op_log_entity_type ON public.act_hi_op_log USING btree (entity_type_);
 1   DROP INDEX public.act_idx_hi_op_log_entity_type;
       public            postgres    false    232            �           1259    19507    act_idx_hi_op_log_op_type    INDEX     ^   CREATE INDEX act_idx_hi_op_log_op_type ON public.act_hi_op_log USING btree (operation_type_);
 -   DROP INDEX public.act_idx_hi_op_log_op_type;
       public            postgres    false    232            �           1259    19508    act_idx_hi_op_log_procdef    INDEX     [   CREATE INDEX act_idx_hi_op_log_procdef ON public.act_hi_op_log USING btree (proc_def_id_);
 -   DROP INDEX public.act_idx_hi_op_log_procdef;
       public            postgres    false    232            �           1259    19509    act_idx_hi_op_log_procinst    INDEX     ]   CREATE INDEX act_idx_hi_op_log_procinst ON public.act_hi_op_log USING btree (proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_op_log_procinst;
       public            postgres    false    232            �           1259    19510    act_idx_hi_op_log_rm_time    INDEX     \   CREATE INDEX act_idx_hi_op_log_rm_time ON public.act_hi_op_log USING btree (removal_time_);
 -   DROP INDEX public.act_idx_hi_op_log_rm_time;
       public            postgres    false    232            �           1259    19511    act_idx_hi_op_log_root_pi    INDEX     a   CREATE INDEX act_idx_hi_op_log_root_pi ON public.act_hi_op_log USING btree (root_proc_inst_id_);
 -   DROP INDEX public.act_idx_hi_op_log_root_pi;
       public            postgres    false    232            �           1259    19512    act_idx_hi_op_log_task    INDEX     T   CREATE INDEX act_idx_hi_op_log_task ON public.act_hi_op_log USING btree (task_id_);
 *   DROP INDEX public.act_idx_hi_op_log_task;
       public            postgres    false    232            �           1259    19513    act_idx_hi_op_log_timestamp    INDEX     [   CREATE INDEX act_idx_hi_op_log_timestamp ON public.act_hi_op_log USING btree (timestamp_);
 /   DROP INDEX public.act_idx_hi_op_log_timestamp;
       public            postgres    false    232            �           1259    19514    act_idx_hi_op_log_user_id    INDEX     W   CREATE INDEX act_idx_hi_op_log_user_id ON public.act_hi_op_log USING btree (user_id_);
 -   DROP INDEX public.act_idx_hi_op_log_user_id;
       public            postgres    false    232            �           1259    19515    act_idx_hi_pi_pdefid_end_time    INDEX     l   CREATE INDEX act_idx_hi_pi_pdefid_end_time ON public.act_hi_procinst USING btree (proc_def_id_, end_time_);
 1   DROP INDEX public.act_idx_hi_pi_pdefid_end_time;
       public            postgres    false    233    233            �           1259    19516    act_idx_hi_pro_i_buskey    INDEX     \   CREATE INDEX act_idx_hi_pro_i_buskey ON public.act_hi_procinst USING btree (business_key_);
 +   DROP INDEX public.act_idx_hi_pro_i_buskey;
       public            postgres    false    233            �           1259    19517    act_idx_hi_pro_inst_end    INDEX     X   CREATE INDEX act_idx_hi_pro_inst_end ON public.act_hi_procinst USING btree (end_time_);
 +   DROP INDEX public.act_idx_hi_pro_inst_end;
       public            postgres    false    233            �           1259    19518     act_idx_hi_pro_inst_proc_def_key    INDEX     e   CREATE INDEX act_idx_hi_pro_inst_proc_def_key ON public.act_hi_procinst USING btree (proc_def_key_);
 4   DROP INDEX public.act_idx_hi_pro_inst_proc_def_key;
       public            postgres    false    233            �           1259    19519    act_idx_hi_pro_inst_proc_time    INDEX     k   CREATE INDEX act_idx_hi_pro_inst_proc_time ON public.act_hi_procinst USING btree (start_time_, end_time_);
 1   DROP INDEX public.act_idx_hi_pro_inst_proc_time;
       public            postgres    false    233    233            �           1259    19520    act_idx_hi_pro_inst_rm_time    INDEX     `   CREATE INDEX act_idx_hi_pro_inst_rm_time ON public.act_hi_procinst USING btree (removal_time_);
 /   DROP INDEX public.act_idx_hi_pro_inst_rm_time;
       public            postgres    false    233            �           1259    19521    act_idx_hi_pro_inst_root_pi    INDEX     e   CREATE INDEX act_idx_hi_pro_inst_root_pi ON public.act_hi_procinst USING btree (root_proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_pro_inst_root_pi;
       public            postgres    false    233            �           1259    19522    act_idx_hi_pro_inst_tenant_id    INDEX     _   CREATE INDEX act_idx_hi_pro_inst_tenant_id ON public.act_hi_procinst USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_hi_pro_inst_tenant_id;
       public            postgres    false    233            �           1259    19523    act_idx_hi_procvar_name_type    INDEX     c   CREATE INDEX act_idx_hi_procvar_name_type ON public.act_hi_varinst USING btree (name_, var_type_);
 0   DROP INDEX public.act_idx_hi_procvar_name_type;
       public            postgres    false    235    235            �           1259    19524    act_idx_hi_procvar_proc_inst    INDEX     `   CREATE INDEX act_idx_hi_procvar_proc_inst ON public.act_hi_varinst USING btree (proc_inst_id_);
 0   DROP INDEX public.act_idx_hi_procvar_proc_inst;
       public            postgres    false    235            �           1259    19525    act_idx_hi_task_inst_end    INDEX     Y   CREATE INDEX act_idx_hi_task_inst_end ON public.act_hi_taskinst USING btree (end_time_);
 ,   DROP INDEX public.act_idx_hi_task_inst_end;
       public            postgres    false    234            �           1259    19526 !   act_idx_hi_task_inst_proc_def_key    INDEX     f   CREATE INDEX act_idx_hi_task_inst_proc_def_key ON public.act_hi_taskinst USING btree (proc_def_key_);
 5   DROP INDEX public.act_idx_hi_task_inst_proc_def_key;
       public            postgres    false    234            �           1259    19527    act_idx_hi_task_inst_rm_time    INDEX     a   CREATE INDEX act_idx_hi_task_inst_rm_time ON public.act_hi_taskinst USING btree (removal_time_);
 0   DROP INDEX public.act_idx_hi_task_inst_rm_time;
       public            postgres    false    234            �           1259    19528    act_idx_hi_task_inst_start    INDEX     ]   CREATE INDEX act_idx_hi_task_inst_start ON public.act_hi_taskinst USING btree (start_time_);
 .   DROP INDEX public.act_idx_hi_task_inst_start;
       public            postgres    false    234            �           1259    19529    act_idx_hi_task_inst_tenant_id    INDEX     `   CREATE INDEX act_idx_hi_task_inst_tenant_id ON public.act_hi_taskinst USING btree (tenant_id_);
 2   DROP INDEX public.act_idx_hi_task_inst_tenant_id;
       public            postgres    false    234            �           1259    19530    act_idx_hi_taskinst_procinst    INDEX     a   CREATE INDEX act_idx_hi_taskinst_procinst ON public.act_hi_taskinst USING btree (proc_inst_id_);
 0   DROP INDEX public.act_idx_hi_taskinst_procinst;
       public            postgres    false    234            �           1259    19531    act_idx_hi_taskinst_root_pi    INDEX     e   CREATE INDEX act_idx_hi_taskinst_root_pi ON public.act_hi_taskinst USING btree (root_proc_inst_id_);
 /   DROP INDEX public.act_idx_hi_taskinst_root_pi;
       public            postgres    false    234            �           1259    19532    act_idx_hi_taskinstid_procinst    INDEX     h   CREATE INDEX act_idx_hi_taskinstid_procinst ON public.act_hi_taskinst USING btree (id_, proc_inst_id_);
 2   DROP INDEX public.act_idx_hi_taskinstid_procinst;
       public            postgres    false    234    234            �           1259    19533     act_idx_hi_var_inst_proc_def_key    INDEX     d   CREATE INDEX act_idx_hi_var_inst_proc_def_key ON public.act_hi_varinst USING btree (proc_def_key_);
 4   DROP INDEX public.act_idx_hi_var_inst_proc_def_key;
       public            postgres    false    235            �           1259    19534    act_idx_hi_var_inst_tenant_id    INDEX     ^   CREATE INDEX act_idx_hi_var_inst_tenant_id ON public.act_hi_varinst USING btree (tenant_id_);
 1   DROP INDEX public.act_idx_hi_var_inst_tenant_id;
       public            postgres    false    235            �           1259    19535    act_idx_hi_var_pi_name_type    INDEX     q   CREATE INDEX act_idx_hi_var_pi_name_type ON public.act_hi_varinst USING btree (proc_inst_id_, name_, var_type_);
 /   DROP INDEX public.act_idx_hi_var_pi_name_type;
       public            postgres    false    235    235    235            �           1259    19536    act_idx_hi_varinst_act_inst_id    INDEX     a   CREATE INDEX act_idx_hi_varinst_act_inst_id ON public.act_hi_varinst USING btree (act_inst_id_);
 2   DROP INDEX public.act_idx_hi_varinst_act_inst_id;
       public            postgres    false    235            �           1259    19537    act_idx_hi_varinst_bytear    INDEX     ]   CREATE INDEX act_idx_hi_varinst_bytear ON public.act_hi_varinst USING btree (bytearray_id_);
 -   DROP INDEX public.act_idx_hi_varinst_bytear;
       public            postgres    false    235            �           1259    19538    act_idx_hi_varinst_name    INDEX     S   CREATE INDEX act_idx_hi_varinst_name ON public.act_hi_varinst USING btree (name_);
 +   DROP INDEX public.act_idx_hi_varinst_name;
       public            postgres    false    235            �           1259    19539    act_idx_hi_varinst_rm_time    INDEX     ^   CREATE INDEX act_idx_hi_varinst_rm_time ON public.act_hi_varinst USING btree (removal_time_);
 .   DROP INDEX public.act_idx_hi_varinst_rm_time;
       public            postgres    false    235            �           1259    19540    act_idx_hi_varinst_root_pi    INDEX     c   CREATE INDEX act_idx_hi_varinst_root_pi ON public.act_hi_varinst USING btree (root_proc_inst_id_);
 .   DROP INDEX public.act_idx_hi_varinst_root_pi;
       public            postgres    false    235            D           1259    19541    act_idx_ident_lnk_group    INDEX     \   CREATE INDEX act_idx_ident_lnk_group ON public.act_ru_identitylink USING btree (group_id_);
 +   DROP INDEX public.act_idx_ident_lnk_group;
       public            postgres    false    256            E           1259    19542    act_idx_ident_lnk_user    INDEX     Z   CREATE INDEX act_idx_ident_lnk_user ON public.act_ru_identitylink USING btree (user_id_);
 *   DROP INDEX public.act_idx_ident_lnk_user;
       public            postgres    false    256            I           1259    19543    act_idx_inc_causeincid    INDEX     `   CREATE INDEX act_idx_inc_causeincid ON public.act_ru_incident USING btree (cause_incident_id_);
 *   DROP INDEX public.act_idx_inc_causeincid;
       public            postgres    false    257            J           1259    19544    act_idx_inc_configuration    INDEX     _   CREATE INDEX act_idx_inc_configuration ON public.act_ru_incident USING btree (configuration_);
 -   DROP INDEX public.act_idx_inc_configuration;
       public            postgres    false    257            K           1259    19545    act_idx_inc_exid    INDEX     U   CREATE INDEX act_idx_inc_exid ON public.act_ru_incident USING btree (execution_id_);
 $   DROP INDEX public.act_idx_inc_exid;
       public            postgres    false    257            L           1259    19546    act_idx_inc_job_def    INDEX     V   CREATE INDEX act_idx_inc_job_def ON public.act_ru_incident USING btree (job_def_id_);
 '   DROP INDEX public.act_idx_inc_job_def;
       public            postgres    false    257            M           1259    19547    act_idx_inc_procdefid    INDEX     Y   CREATE INDEX act_idx_inc_procdefid ON public.act_ru_incident USING btree (proc_def_id_);
 )   DROP INDEX public.act_idx_inc_procdefid;
       public            postgres    false    257            N           1259    19548    act_idx_inc_procinstid    INDEX     [   CREATE INDEX act_idx_inc_procinstid ON public.act_ru_incident USING btree (proc_inst_id_);
 *   DROP INDEX public.act_idx_inc_procinstid;
       public            postgres    false    257            O           1259    19549    act_idx_inc_rootcauseincid    INDEX     i   CREATE INDEX act_idx_inc_rootcauseincid ON public.act_ru_incident USING btree (root_cause_incident_id_);
 .   DROP INDEX public.act_idx_inc_rootcauseincid;
       public            postgres    false    257            P           1259    19550    act_idx_inc_tenant_id    INDEX     W   CREATE INDEX act_idx_inc_tenant_id ON public.act_ru_incident USING btree (tenant_id_);
 )   DROP INDEX public.act_idx_inc_tenant_id;
       public            postgres    false    257            S           1259    19551    act_idx_job_exception    INDEX     [   CREATE INDEX act_idx_job_exception ON public.act_ru_job USING btree (exception_stack_id_);
 )   DROP INDEX public.act_idx_job_exception;
       public            postgres    false    258            T           1259    19552    act_idx_job_execution_id    INDEX     X   CREATE INDEX act_idx_job_execution_id ON public.act_ru_job USING btree (execution_id_);
 ,   DROP INDEX public.act_idx_job_execution_id;
       public            postgres    false    258            U           1259    19553    act_idx_job_handler    INDEX     a   CREATE INDEX act_idx_job_handler ON public.act_ru_job USING btree (handler_type_, handler_cfg_);
 '   DROP INDEX public.act_idx_job_handler;
       public            postgres    false    258    258            V           1259    19554    act_idx_job_handler_type    INDEX     X   CREATE INDEX act_idx_job_handler_type ON public.act_ru_job USING btree (handler_type_);
 ,   DROP INDEX public.act_idx_job_handler_type;
       public            postgres    false    258            W           1259    19555    act_idx_job_job_def_id    INDEX     T   CREATE INDEX act_idx_job_job_def_id ON public.act_ru_job USING btree (job_def_id_);
 *   DROP INDEX public.act_idx_job_job_def_id;
       public            postgres    false    258            X           1259    19556    act_idx_job_procinst    INDEX     [   CREATE INDEX act_idx_job_procinst ON public.act_ru_job USING btree (process_instance_id_);
 (   DROP INDEX public.act_idx_job_procinst;
       public            postgres    false    258            Y           1259    19557    act_idx_job_root_procinst    INDEX     ^   CREATE INDEX act_idx_job_root_procinst ON public.act_ru_job USING btree (root_proc_inst_id_);
 -   DROP INDEX public.act_idx_job_root_procinst;
       public            postgres    false    258            Z           1259    19558    act_idx_job_tenant_id    INDEX     R   CREATE INDEX act_idx_job_tenant_id ON public.act_ru_job USING btree (tenant_id_);
 )   DROP INDEX public.act_idx_job_tenant_id;
       public            postgres    false    258            ]           1259    19559    act_idx_jobdef_proc_def_id    INDEX     \   CREATE INDEX act_idx_jobdef_proc_def_id ON public.act_ru_jobdef USING btree (proc_def_id_);
 .   DROP INDEX public.act_idx_jobdef_proc_def_id;
       public            postgres    false    259            ^           1259    19560    act_idx_jobdef_tenant_id    INDEX     X   CREATE INDEX act_idx_jobdef_tenant_id ON public.act_ru_jobdef USING btree (tenant_id_);
 ,   DROP INDEX public.act_idx_jobdef_tenant_id;
       public            postgres    false    259            �           1259    19561    act_idx_memb_group    INDEX     U   CREATE INDEX act_idx_memb_group ON public.act_id_membership USING btree (group_id_);
 &   DROP INDEX public.act_idx_memb_group;
       public            postgres    false    238            �           1259    19562    act_idx_memb_user    INDEX     S   CREATE INDEX act_idx_memb_user ON public.act_id_membership USING btree (user_id_);
 %   DROP INDEX public.act_idx_memb_user;
       public            postgres    false    238            a           1259    19563    act_idx_meter_log    INDEX     [   CREATE INDEX act_idx_meter_log ON public.act_ru_meter_log USING btree (name_, timestamp_);
 %   DROP INDEX public.act_idx_meter_log;
       public            postgres    false    260    260            b           1259    19564    act_idx_meter_log_ms    INDEX     Z   CREATE INDEX act_idx_meter_log_ms ON public.act_ru_meter_log USING btree (milliseconds_);
 (   DROP INDEX public.act_idx_meter_log_ms;
       public            postgres    false    260            c           1259    19565    act_idx_meter_log_name_ms    INDEX     f   CREATE INDEX act_idx_meter_log_name_ms ON public.act_ru_meter_log USING btree (name_, milliseconds_);
 -   DROP INDEX public.act_idx_meter_log_name_ms;
       public            postgres    false    260    260            d           1259    19566    act_idx_meter_log_report    INDEX     p   CREATE INDEX act_idx_meter_log_report ON public.act_ru_meter_log USING btree (name_, reporter_, milliseconds_);
 ,   DROP INDEX public.act_idx_meter_log_report;
       public            postgres    false    260    260    260            e           1259    19567    act_idx_meter_log_time    INDEX     Y   CREATE INDEX act_idx_meter_log_time ON public.act_ru_meter_log USING btree (timestamp_);
 *   DROP INDEX public.act_idx_meter_log_time;
       public            postgres    false    260                       1259    19568    act_idx_procdef_deployment_id    INDEX     b   CREATE INDEX act_idx_procdef_deployment_id ON public.act_re_procdef USING btree (deployment_id_);
 1   DROP INDEX public.act_idx_procdef_deployment_id;
       public            postgres    false    247                       1259    19569    act_idx_procdef_tenant_id    INDEX     Z   CREATE INDEX act_idx_procdef_tenant_id ON public.act_re_procdef USING btree (tenant_id_);
 -   DROP INDEX public.act_idx_procdef_tenant_id;
       public            postgres    false    247                       1259    19570    act_idx_procdef_ver_tag    INDEX     Z   CREATE INDEX act_idx_procdef_ver_tag ON public.act_re_procdef USING btree (version_tag_);
 +   DROP INDEX public.act_idx_procdef_ver_tag;
       public            postgres    false    247            h           1259    19571    act_idx_task_assignee    INDEX     R   CREATE INDEX act_idx_task_assignee ON public.act_ru_task USING btree (assignee_);
 )   DROP INDEX public.act_idx_task_assignee;
       public            postgres    false    261            i           1259    19572    act_idx_task_case_def_id    INDEX     X   CREATE INDEX act_idx_task_case_def_id ON public.act_ru_task USING btree (case_def_id_);
 ,   DROP INDEX public.act_idx_task_case_def_id;
       public            postgres    false    261            j           1259    19573    act_idx_task_case_exec    INDEX     \   CREATE INDEX act_idx_task_case_exec ON public.act_ru_task USING btree (case_execution_id_);
 *   DROP INDEX public.act_idx_task_case_exec;
       public            postgres    false    261            k           1259    19574    act_idx_task_create    INDEX     S   CREATE INDEX act_idx_task_create ON public.act_ru_task USING btree (create_time_);
 '   DROP INDEX public.act_idx_task_create;
       public            postgres    false    261            l           1259    19575    act_idx_task_exec    INDEX     R   CREATE INDEX act_idx_task_exec ON public.act_ru_task USING btree (execution_id_);
 %   DROP INDEX public.act_idx_task_exec;
       public            postgres    false    261            m           1259    19576    act_idx_task_last_updated    INDEX     Z   CREATE INDEX act_idx_task_last_updated ON public.act_ru_task USING btree (last_updated_);
 -   DROP INDEX public.act_idx_task_last_updated;
       public            postgres    false    261            t           1259    19577    act_idx_task_meter_log_time    INDEX     c   CREATE INDEX act_idx_task_meter_log_time ON public.act_ru_task_meter_log USING btree (timestamp_);
 /   DROP INDEX public.act_idx_task_meter_log_time;
       public            postgres    false    262            n           1259    19578    act_idx_task_owner    INDEX     L   CREATE INDEX act_idx_task_owner ON public.act_ru_task USING btree (owner_);
 &   DROP INDEX public.act_idx_task_owner;
       public            postgres    false    261            o           1259    19579    act_idx_task_procdef    INDEX     T   CREATE INDEX act_idx_task_procdef ON public.act_ru_task USING btree (proc_def_id_);
 (   DROP INDEX public.act_idx_task_procdef;
       public            postgres    false    261            p           1259    19580    act_idx_task_procinst    INDEX     V   CREATE INDEX act_idx_task_procinst ON public.act_ru_task USING btree (proc_inst_id_);
 )   DROP INDEX public.act_idx_task_procinst;
       public            postgres    false    261            q           1259    19581    act_idx_task_tenant_id    INDEX     T   CREATE INDEX act_idx_task_tenant_id ON public.act_ru_task USING btree (tenant_id_);
 *   DROP INDEX public.act_idx_task_tenant_id;
       public            postgres    false    261            �           1259    19582    act_idx_tenant_memb    INDEX     Z   CREATE INDEX act_idx_tenant_memb ON public.act_id_tenant_member USING btree (tenant_id_);
 '   DROP INDEX public.act_idx_tenant_memb;
       public            postgres    false    240            �           1259    19583    act_idx_tenant_memb_group    INDEX     _   CREATE INDEX act_idx_tenant_memb_group ON public.act_id_tenant_member USING btree (group_id_);
 -   DROP INDEX public.act_idx_tenant_memb_group;
       public            postgres    false    240            �           1259    19584    act_idx_tenant_memb_user    INDEX     ]   CREATE INDEX act_idx_tenant_memb_user ON public.act_id_tenant_member USING btree (user_id_);
 ,   DROP INDEX public.act_idx_tenant_memb_user;
       public            postgres    false    240            F           1259    19585    act_idx_tskass_task    INDEX     W   CREATE INDEX act_idx_tskass_task ON public.act_ru_identitylink USING btree (task_id_);
 '   DROP INDEX public.act_idx_tskass_task;
       public            postgres    false    256            x           1259    19586    act_idx_var_bytearray    INDEX     Z   CREATE INDEX act_idx_var_bytearray ON public.act_ru_variable USING btree (bytearray_id_);
 )   DROP INDEX public.act_idx_var_bytearray;
       public            postgres    false    263            y           1259    19587    act_idx_var_case_exe    INDEX     ^   CREATE INDEX act_idx_var_case_exe ON public.act_ru_variable USING btree (case_execution_id_);
 (   DROP INDEX public.act_idx_var_case_exe;
       public            postgres    false    263            z           1259    19588    act_idx_var_case_inst_id    INDEX     ]   CREATE INDEX act_idx_var_case_inst_id ON public.act_ru_variable USING btree (case_inst_id_);
 ,   DROP INDEX public.act_idx_var_case_inst_id;
       public            postgres    false    263            {           1259    19589    act_idx_var_exe    INDEX     T   CREATE INDEX act_idx_var_exe ON public.act_ru_variable USING btree (execution_id_);
 #   DROP INDEX public.act_idx_var_exe;
       public            postgres    false    263            |           1259    19590    act_idx_var_procinst    INDEX     Y   CREATE INDEX act_idx_var_procinst ON public.act_ru_variable USING btree (proc_inst_id_);
 (   DROP INDEX public.act_idx_var_procinst;
       public            postgres    false    263            }           1259    19591    act_idx_variable_task_id    INDEX     X   CREATE INDEX act_idx_variable_task_id ON public.act_ru_variable USING btree (task_id_);
 ,   DROP INDEX public.act_idx_variable_task_id;
       public            postgres    false    263            ~           1259    19592    act_idx_variable_task_name_type    INDEX     m   CREATE INDEX act_idx_variable_task_name_type ON public.act_ru_variable USING btree (task_id_, name_, type_);
 3   DROP INDEX public.act_idx_variable_task_name_type;
       public            postgres    false    263    263    263                       1259    19593    act_idx_variable_tenant_id    INDEX     \   CREATE INDEX act_idx_variable_tenant_id ON public.act_ru_variable USING btree (tenant_id_);
 .   DROP INDEX public.act_idx_variable_tenant_id;
       public            postgres    false    263            �           2606    19594 )   act_ru_identitylink act_fk_athrz_procedef    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES public.act_re_procdef(id_);
 S   ALTER TABLE ONLY public.act_ru_identitylink DROP CONSTRAINT act_fk_athrz_procedef;
       public          postgres    false    5136    247    256            �           2606    19599 !   act_ru_batch act_fk_batch_job_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_batch
    ADD CONSTRAINT act_fk_batch_job_def FOREIGN KEY (batch_job_def_id_) REFERENCES public.act_ru_jobdef(id_);
 K   ALTER TABLE ONLY public.act_ru_batch DROP CONSTRAINT act_fk_batch_job_def;
       public          postgres    false    249    5216    259            �           2606    19604 )   act_ru_batch act_fk_batch_monitor_job_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_batch
    ADD CONSTRAINT act_fk_batch_monitor_job_def FOREIGN KEY (monitor_job_def_id_) REFERENCES public.act_ru_jobdef(id_);
 S   ALTER TABLE ONLY public.act_ru_batch DROP CONSTRAINT act_fk_batch_monitor_job_def;
       public          postgres    false    249    5216    259            �           2606    19609 &   act_ru_batch act_fk_batch_seed_job_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_batch
    ADD CONSTRAINT act_fk_batch_seed_job_def FOREIGN KEY (seed_job_def_id_) REFERENCES public.act_ru_jobdef(id_);
 P   ALTER TABLE ONLY public.act_ru_batch DROP CONSTRAINT act_fk_batch_seed_job_def;
       public          postgres    false    249    259    5216            �           2606    19614 $   act_ge_bytearray act_fk_bytearr_depl    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES public.act_re_deployment(id_);
 N   ALTER TABLE ONLY public.act_ge_bytearray DROP CONSTRAINT act_fk_bytearr_depl;
       public          postgres    false    246    5131    215            �           2606    19619 .   act_ru_case_execution act_fk_case_exe_case_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_def FOREIGN KEY (case_def_id_) REFERENCES public.act_re_case_def(id_);
 X   ALTER TABLE ONLY public.act_ru_case_execution DROP CONSTRAINT act_fk_case_exe_case_def;
       public          postgres    false    250    243    5120            �           2606    19624 /   act_ru_case_execution act_fk_case_exe_case_inst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_case_inst FOREIGN KEY (case_inst_id_) REFERENCES public.act_ru_case_execution(id_);
 Y   ALTER TABLE ONLY public.act_ru_case_execution DROP CONSTRAINT act_fk_case_exe_case_inst;
       public          postgres    false    250    5158    250            �           2606    19629 ,   act_ru_case_execution act_fk_case_exe_parent    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_case_execution
    ADD CONSTRAINT act_fk_case_exe_parent FOREIGN KEY (parent_id_) REFERENCES public.act_ru_case_execution(id_);
 V   ALTER TABLE ONLY public.act_ru_case_execution DROP CONSTRAINT act_fk_case_exe_parent;
       public          postgres    false    250    250    5158            �           2606    19634 4   act_ru_case_sentry_part act_fk_case_sentry_case_exec    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_exec FOREIGN KEY (case_exec_id_) REFERENCES public.act_ru_case_execution(id_);
 ^   ALTER TABLE ONLY public.act_ru_case_sentry_part DROP CONSTRAINT act_fk_case_sentry_case_exec;
       public          postgres    false    251    250    5158            �           2606    19639 4   act_ru_case_sentry_part act_fk_case_sentry_case_inst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_case_sentry_part
    ADD CONSTRAINT act_fk_case_sentry_case_inst FOREIGN KEY (case_inst_id_) REFERENCES public.act_ru_case_execution(id_);
 ^   ALTER TABLE ONLY public.act_ru_case_sentry_part DROP CONSTRAINT act_fk_case_sentry_case_inst;
       public          postgres    false    5158    250    251            �           2606    19644 "   act_re_decision_def act_fk_dec_req    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_re_decision_def
    ADD CONSTRAINT act_fk_dec_req FOREIGN KEY (dec_req_id_) REFERENCES public.act_re_decision_req_def(id_);
 L   ALTER TABLE ONLY public.act_re_decision_def DROP CONSTRAINT act_fk_dec_req;
       public          postgres    false    5127    245    244            �           2606    19649 %   act_ru_event_subscr act_fk_event_exec    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES public.act_ru_execution(id_);
 O   ALTER TABLE ONLY public.act_ru_event_subscr DROP CONSTRAINT act_fk_event_exec;
       public          postgres    false    253    252    5177            �           2606    19654 "   act_ru_execution act_fk_exe_parent    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES public.act_ru_execution(id_);
 L   ALTER TABLE ONLY public.act_ru_execution DROP CONSTRAINT act_fk_exe_parent;
       public          postgres    false    5177    253    253            �           2606    19659 #   act_ru_execution act_fk_exe_procdef    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_execution
    ADD CONSTRAINT act_fk_exe_procdef FOREIGN KEY (proc_def_id_) REFERENCES public.act_re_procdef(id_);
 M   ALTER TABLE ONLY public.act_ru_execution DROP CONSTRAINT act_fk_exe_procdef;
       public          postgres    false    5136    253    247            �           2606    19664 $   act_ru_execution act_fk_exe_procinst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES public.act_ru_execution(id_);
 N   ALTER TABLE ONLY public.act_ru_execution DROP CONSTRAINT act_fk_exe_procinst;
       public          postgres    false    253    5177    253            �           2606    19669 !   act_ru_execution act_fk_exe_super    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES public.act_ru_execution(id_);
 K   ALTER TABLE ONLY public.act_ru_execution DROP CONSTRAINT act_fk_exe_super;
       public          postgres    false    5177    253    253            �           2606    19674 -   act_ru_ext_task act_fk_ext_task_error_details    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_error_details FOREIGN KEY (error_details_id_) REFERENCES public.act_ge_bytearray(id_);
 W   ALTER TABLE ONLY public.act_ru_ext_task DROP CONSTRAINT act_fk_ext_task_error_details;
       public          postgres    false    215    4917    254            �           2606    19679 #   act_ru_ext_task act_fk_ext_task_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_ext_task
    ADD CONSTRAINT act_fk_ext_task_exe FOREIGN KEY (execution_id_) REFERENCES public.act_ru_execution(id_);
 M   ALTER TABLE ONLY public.act_ru_ext_task DROP CONSTRAINT act_fk_ext_task_exe;
       public          postgres    false    254    253    5177            �           2606    19684     act_ru_incident act_fk_inc_cause    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_cause FOREIGN KEY (cause_incident_id_) REFERENCES public.act_ru_incident(id_);
 J   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_cause;
       public          postgres    false    5202    257    257            �           2606    19689    act_ru_incident act_fk_inc_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_exe FOREIGN KEY (execution_id_) REFERENCES public.act_ru_execution(id_);
 H   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_exe;
       public          postgres    false    253    257    5177            �           2606    19694 "   act_ru_incident act_fk_inc_job_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_job_def FOREIGN KEY (job_def_id_) REFERENCES public.act_ru_jobdef(id_);
 L   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_job_def;
       public          postgres    false    5216    259    257            �           2606    19699 "   act_ru_incident act_fk_inc_procdef    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_procdef FOREIGN KEY (proc_def_id_) REFERENCES public.act_re_procdef(id_);
 L   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_procdef;
       public          postgres    false    5136    257    247            �           2606    19704 #   act_ru_incident act_fk_inc_procinst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_procinst FOREIGN KEY (proc_inst_id_) REFERENCES public.act_ru_execution(id_);
 M   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_procinst;
       public          postgres    false    253    5177    257            �           2606    19709 !   act_ru_incident act_fk_inc_rcause    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_incident
    ADD CONSTRAINT act_fk_inc_rcause FOREIGN KEY (root_cause_incident_id_) REFERENCES public.act_ru_incident(id_);
 K   ALTER TABLE ONLY public.act_ru_incident DROP CONSTRAINT act_fk_inc_rcause;
       public          postgres    false    257    257    5202            �           2606    19714    act_ru_job act_fk_job_exception    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES public.act_ge_bytearray(id_);
 I   ALTER TABLE ONLY public.act_ru_job DROP CONSTRAINT act_fk_job_exception;
       public          postgres    false    258    4917    215            �           2606    19719 #   act_id_membership act_fk_memb_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES public.act_id_group(id_);
 M   ALTER TABLE ONLY public.act_id_membership DROP CONSTRAINT act_fk_memb_group;
       public          postgres    false    238    5096    236            �           2606    19724 "   act_id_membership act_fk_memb_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES public.act_id_user(id_);
 L   ALTER TABLE ONLY public.act_id_membership DROP CONSTRAINT act_fk_memb_user;
       public          postgres    false    241    238    5115            �           2606    19729     act_ru_task act_fk_task_case_def    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_fk_task_case_def FOREIGN KEY (case_def_id_) REFERENCES public.act_re_case_def(id_);
 J   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_fk_task_case_def;
       public          postgres    false    243    5120    261            �           2606    19734     act_ru_task act_fk_task_case_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_fk_task_case_exe FOREIGN KEY (case_execution_id_) REFERENCES public.act_ru_case_execution(id_);
 J   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_fk_task_case_exe;
       public          postgres    false    250    261    5158            �           2606    19739    act_ru_task act_fk_task_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES public.act_ru_execution(id_);
 E   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_fk_task_exe;
       public          postgres    false    5177    261    253            �           2606    19744    act_ru_task act_fk_task_procdef    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES public.act_re_procdef(id_);
 I   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_fk_task_procdef;
       public          postgres    false    5136    261    247            �           2606    19749     act_ru_task act_fk_task_procinst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES public.act_ru_execution(id_);
 J   ALTER TABLE ONLY public.act_ru_task DROP CONSTRAINT act_fk_task_procinst;
       public          postgres    false    261    253    5177            �           2606    19754 '   act_id_tenant_member act_fk_tenant_memb    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb FOREIGN KEY (tenant_id_) REFERENCES public.act_id_tenant(id_);
 Q   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_fk_tenant_memb;
       public          postgres    false    240    5104    239            �           2606    19759 -   act_id_tenant_member act_fk_tenant_memb_group    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_group FOREIGN KEY (group_id_) REFERENCES public.act_id_group(id_);
 W   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_fk_tenant_memb_group;
       public          postgres    false    5096    236    240            �           2606    19764 ,   act_id_tenant_member act_fk_tenant_memb_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_id_tenant_member
    ADD CONSTRAINT act_fk_tenant_memb_user FOREIGN KEY (user_id_) REFERENCES public.act_id_user(id_);
 V   ALTER TABLE ONLY public.act_id_tenant_member DROP CONSTRAINT act_fk_tenant_memb_user;
       public          postgres    false    5115    240    241            �           2606    19769 &   act_ru_identitylink act_fk_tskass_task    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES public.act_ru_task(id_);
 P   ALTER TABLE ONLY public.act_ru_identitylink DROP CONSTRAINT act_fk_tskass_task;
       public          postgres    false    261    5235    256            �           2606    19774     act_ru_variable act_fk_var_batch    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_batch FOREIGN KEY (batch_id_) REFERENCES public.act_ru_batch(id_);
 J   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_batch;
       public          postgres    false    249    5151    263            �           2606    19779 $   act_ru_variable act_fk_var_bytearray    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES public.act_ge_bytearray(id_);
 N   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_bytearray;
       public          postgres    false    215    4917    263            �           2606    19784 #   act_ru_variable act_fk_var_case_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_case_exe FOREIGN KEY (case_execution_id_) REFERENCES public.act_ru_case_execution(id_);
 M   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_case_exe;
       public          postgres    false    250    263    5158            �           2606    19789 $   act_ru_variable act_fk_var_case_inst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_case_inst FOREIGN KEY (case_inst_id_) REFERENCES public.act_ru_case_execution(id_);
 N   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_case_inst;
       public          postgres    false    5158    263    250            �           2606    19794    act_ru_variable act_fk_var_exe    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES public.act_ru_execution(id_);
 H   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_exe;
       public          postgres    false    5177    253    263            �           2606    19799 #   act_ru_variable act_fk_var_procinst    FK CONSTRAINT     �   ALTER TABLE ONLY public.act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES public.act_ru_execution(id_);
 M   ALTER TABLE ONLY public.act_ru_variable DROP CONSTRAINT act_fk_var_procinst;
       public          postgres    false    263    253    5177            �           2606    19804 $   jhi_user_authority fk_authority_name    FK CONSTRAINT     �   ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT fk_authority_name FOREIGN KEY (authority_name) REFERENCES public.jhi_authority(name);
 N   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT fk_authority_name;
       public          postgres    false    267    269    5257            �           2606    19809    job fk_job__employee_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.job
    ADD CONSTRAINT fk_job__employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(id);
 A   ALTER TABLE ONLY public.job DROP CONSTRAINT fk_job__employee_id;
       public          postgres    false    270    266    5255            �           2606    19814    jhi_user_authority fk_user_id    FK CONSTRAINT        ALTER TABLE ONLY public.jhi_user_authority
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.jhi_user(id);
 G   ALTER TABLE ONLY public.jhi_user_authority DROP CONSTRAINT fk_user_id;
       public          postgres    false    269    268    5259            P      x������ � �      Q   �   x�e�K�0D��I`Ѩ��
H���LE�MPc�r{,� ��߼���3F�3�2�d��W�<E��0a	V��5LX�F?D��q~�Hb9��i��{60(�o���7,B�(� c���ACR��D'���#f��(4�S$�[���Z��.P�|��m��jߵ���7���9�S�N@"ψ�'.P�d��zؙ^�      R   0   x�3�4202�5��5�T04�2��20�3 ��q���p��qqq ��.      S      x������ � �      T      x������ � �      U      x������ � �      V      x������ � �      W      x������ � �      X      x������ � �      Y      x������ � �      Z      x������ � �      [      x������ � �      \      x������ � �      ]      x������ � �      ^      x������ � �      _      x������ � �      `      x������ � �      a      x������ � �      b      x������ � �      c      x������ � �      d      x������ � �      e      x������ � �      f      x������ � �      g      x������ � �      h      x������ � �      i      x������ � �      j      x������ � �      k      x������ � �      l      x������ � �      m      x������ � �      n      x������ � �      o      x������ � �      p      x������ � �      q      x������ � �      r      x������ � �      s      x������ � �      t      x������ � �      u      x������ � �      v      x������ � �      w      x������ � �      x      x������ � �      y      x������ � �      z      x������ � �      {      x������ � �      |      x������ � �      }   @  x����r�0���=�*FFH~�^�X͐��Ȥo����]�'c�����y��9+h����g�����+u�>����0������<��c�'ae!�)�T�������x�'��qÄ�!ĕ۫��Jꓨ�_J[V��Y ����k��K�k�������v� �dE�]�Ͽ�7�Mc��M��2���b��� O�#4���?���|;�}��nq����e�[�[���>N������e�������:yl?����/��j����-[��lw_�w�I�ת��q3�".ua��@��j�9:��F�á,�?��G��;O�1?�wG��S{[�1�>��D���:5�"Ǐ�L�����۳Ά >�pdĥ���P|@%�e ��7��P|W�	�&��'dO�;"N�jg�8�CⲥD����7D7%_�ީ'd�N^q����5K�81�"o?��<�Em����AYqe��-��_T����2@�����Q|W�	�"��'dC�;*N��3T��]ⲥT��k�o�8a���ZqBn��[+N萸f�'��'V����8���-��      ~      x������ � �            x������ � �      �      x������ � �      �   �  x��U�n�0=�_���K����A��ER�jd)�d���RA9�'Es�Hΐ���a<����i;hP^W�X�����p���|e�%���d�gEUt�-�6_�ڦ�%����3bBN�>:5TpNA�_����2�N:n`O��*���Rx�0��|��T9$��ϥ]ç�I��
��BW��������'�ôVz�4�o@M�)S�!:Jhǁ�@q�9������^1yta]	I�� � �M�Y��n�U����Q���z��)ֶ�~��붟��em���[T]�'kq�s���w&��i3���4I�� i}~�$K�	�GۮS��A�����7e���ӒQ�v��\��ǆ�X�NX��
����{؃�����7��~�r13�f]�Y��2ݧ/��)9�x���	f���%���be������
�k��������+�����E)�S�9�/�ۏM#�b��hk�� 7�j�1F!�њ�{��;�<�n�ކMq"�Cp��`��R26���؛4W<(�^"��#8���멓��1�X��!�< !F;A��^r�p̆s9�#\�^�hq9�j9+�4i @��_��=���(ţ�R<J�(ţ�R��R|�N&��}�K      �      x�3�L��"�=... U�      �     x�]��n�0�ϫ�����~ȓ��I�(�����AY��5E���}��9�Vo���3C
�����9�6�7t��}��ۓ��N�`����Rn�ȩT�)΁�� V�%��`/����ۏÀ�9�u�R}K�6o~r��G�ژ��3'���%EN�"L��d0Z1�q8�o૵]�E�s0�o���;�vQ�޿/
��Z�z��5>��`�P��V(����׿����ۄ�~j�;�'o��J���	��w��s����K�pQ`L�*+��]��"<���[t�>>��t���_��ɏ&0_��T�J�U�@���J�/�Ax�������h�YK��=��M&P��S���*x4�n�Np�@]�����8|՛��qW�ːF?���?}�K����-�@��j�uU�Y�y^\�p���K�=����f��8��%�E��#$M�E)3	_Dt���7M,���t��b�ކSB*!.�*Т$$K^<����C{z���NǕ�2z�G���^�~F�xҔ��))����6˲?��       �      x���q�wt����
1C�]��b���� b��      �   �   x���K�@Eן�õ:F��TB�^$fJ���ə���à���r�lνp��=�:��&��U%�%��e���o�YanN�Fk��U��U�9�m��#s�5�&��/�0�( �.�1��E�MA�����tZ6/�5���1mu�;��Ң{b�q��aV�R}\�%1�3*���C8�5��ۿ(�$} ^,Y�      �   $   x�3���q�wt����2�pB�]�����1z\\\ �l
      �   2  x�U��N�0�ϛ���؎���	ڢr�ŸV�R�T����g�
$n{�vvf������Cs���6>��/c��i�����˜#{�%c��[�}"Pjpڨ
JxJq"��Ƽ\��>��9�Bt��ºJwp�	�%��~`�Ӏ	���[�u���"�s5��9��t��S�)Vi�:F�Ű�}��J���/5ݪ�� w�崬��u�������M��@H�D%-��z&�ݵ���K6���1��kI\�%���y���B�T�;�,�p�Bށs%[p��x��
��[o��!��W(��.�wM�� ��+     