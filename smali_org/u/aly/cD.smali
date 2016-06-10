.class public final Lu/aly/cD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v4, p0, Lu/aly/cD;->e:J

    .line 23
    iput-wide v4, p0, Lu/aly/cD;->f:J

    .line 1038
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cD;->g:Landroid/content/Context;

    .line 1039
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1041
    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/cD;->c:I

    .line 1042
    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/cD;->a:I

    .line 1044
    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/cD;->d:I

    .line 1045
    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/cD;->b:J

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lu/aly/cD;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lu/aly/cD;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/cD;->c:I

    .line 59
    iget-wide v0, p0, Lu/aly/cD;->e:J

    iput-wide v0, p0, Lu/aly/cD;->b:J

    .line 60
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/cD;->e:J

    .line 68
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/cD;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lu/aly/cD;->d:I

    .line 72
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lu/aly/cD;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lu/aly/cD;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    const-string v1, "failed_requests "

    iget v2, p0, Lu/aly/cD;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lu/aly/cD;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "last_request_time"

    iget-wide v2, p0, Lu/aly/cD;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lu/aly/cD;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public final g()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-wide v0, p0, Lu/aly/cD;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lu/aly/cD;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/cD;->f:J

    .line 94
    :cond_0
    iget-wide v0, p0, Lu/aly/cD;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lu/aly/cD;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lu/aly/cD;->f:J

    goto :goto_0
.end method
