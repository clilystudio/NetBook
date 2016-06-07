.class public final Lu/aly/cC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 18

    .prologue
    .line 117
    invoke-static/range {p1 .. p1}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 118
    if-nez v9, :cond_0

    .line 136
    :goto_0
    return-void

    .line 1162
    :cond_0
    const-string v0, "a_start_time"

    const-wide/16 v2, 0x0

    invoke-interface {v9, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1163
    const-string v2, "a_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v9, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1167
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    sub-long v0, v4, v0

    sget-wide v6, Lcom/umeng/a/a;->h:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 1168
    const-string v0, "MobclickAgent"

    const-string v1, "onResume called before onPause"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_1
    const/4 v0, 0x0

    .line 122
    :goto_1
    if-eqz v0, :cond_b

    .line 1180
    invoke-static/range {p1 .. p1}, Lu/aly/ch;->a(Landroid/content/Context;)Lu/aly/ch;

    move-result-object v10

    .line 2100
    invoke-static/range {p1 .. p1}, Lu/aly/bs;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    invoke-static/range {p1 .. p1}, Lcom/umeng/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2104
    if-nez v1, :cond_3

    .line 2105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_2
    sub-long v0, v4, v2

    sget-wide v2, Lcom/umeng/a/a;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1173
    const/4 v0, 0x1

    goto :goto_1

    .line 2108
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2109
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3034
    invoke-static/range {p1 .. p1}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3036
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3038
    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 1185
    :goto_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1187
    const-string v2, "session_id"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1188
    const-string v2, "session_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1189
    const-string v2, "session_end_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1191
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1193
    if-eqz v0, :cond_a

    .line 1194
    invoke-virtual {v10, v0}, Lu/aly/ch;->a(Lu/aly/cx;)V

    .line 124
    :goto_3
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start new session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_4
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    const-string v1, "a_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v1, "a_end_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 3040
    :cond_4
    const-string v0, "session_start_time"

    const-wide/16 v4, 0x0

    invoke-interface {v12, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3041
    const-string v0, "session_end_time"

    const-wide/16 v6, 0x0

    invoke-interface {v12, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 3042
    const-wide/16 v0, 0x0

    .line 3044
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-eqz v3, :cond_5

    .line 3045
    sub-long v0, v6, v4

    .line 3046
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    cmp-long v3, v14, v16

    if-lez v3, :cond_5

    .line 3047
    const-wide/16 v0, 0x0

    .line 3051
    :cond_5
    new-instance v8, Lu/aly/af;

    invoke-direct {v8}, Lu/aly/af;-><init>()V

    .line 3053
    invoke-virtual {v8, v2}, Lu/aly/af;->a(Ljava/lang/String;)Lu/aly/bd;

    .line 3054
    invoke-virtual {v8, v4, v5}, Lu/aly/af;->a(J)Lu/aly/bd;

    .line 3055
    invoke-virtual {v8, v6, v7}, Lu/aly/af;->b(J)Lu/aly/bd;

    .line 3056
    invoke-virtual {v8, v0, v1}, Lu/aly/af;->c(J)Lu/aly/bd;

    .line 3058
    invoke-static {}, Lcom/umeng/a/a;->a()[D

    move-result-object v0

    .line 3059
    if-eqz v0, :cond_6

    .line 3060
    new-instance v1, Lu/aly/aw;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lu/aly/aw;-><init>(DDJ)V

    .line 3061
    invoke-virtual {v8}, Lu/aly/af;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3062
    invoke-virtual {v8, v1}, Lu/aly/af;->a(Lu/aly/aw;)V

    .line 3068
    :cond_6
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/arcsoft/hpay100/a/a;->N(Landroid/content/Context;)Lu/aly/be;

    move-result-object v0

    .line 3069
    if-eqz v0, :cond_7

    .line 3070
    invoke-virtual {v8, v0}, Lu/aly/af;->a(Lu/aly/be;)Lu/aly/bd;

    .line 3073
    :cond_7
    invoke-static {v12}, Lu/aly/cF;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    .line 3075
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 3076
    invoke-virtual {v8, v0}, Lu/aly/af;->a(Ljava/util/List;)Lu/aly/bd;

    .line 3085
    :cond_8
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3087
    const-string v1, "session_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3088
    const-string v1, "session_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3089
    const-string v1, "session_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3090
    const-string v1, "a_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3091
    const-string v1, "a_end_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3093
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3095
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v8

    .line 3081
    goto/16 :goto_2

    .line 3064
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/aw;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lu/aly/af;->b(Ljava/util/List;)Lu/aly/bd;

    goto :goto_5

    .line 1196
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lu/aly/ch;->a(Lu/aly/cx;)V

    goto/16 :goto_3

    .line 126
    :cond_b
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Extend current session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
