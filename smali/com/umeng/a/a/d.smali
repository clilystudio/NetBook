.class public final Lcom/umeng/a/a/d;
.super Lu/aly/bu;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/umeng/a/a/b;


# direct methods
.method public constructor <init>(Lcom/umeng/a/a/b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    invoke-direct {p0}, Lu/aly/bu;-><init>()V

    .line 168
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/d;->a:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 173
    sget-boolean v0, Lcom/umeng/a/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/design/widget/am;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    iget-object v1, p0, Lcom/umeng/a/a/d;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1191
    new-instance v3, Lcom/umeng/a/a/c;

    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    invoke-direct {v3, v1, v0}, Lcom/umeng/a/a/c;-><init>(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V

    .line 1194
    sget-object v4, Lcom/umeng/a/i;->b:[Ljava/lang/String;

    .line 1195
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v2

    :goto_0
    const/4 v5, 0x2

    if-lt v1, v5, :cond_3

    .line 1203
    :cond_1
    if-nez v0, :cond_4

    .line 1204
    iget-object v0, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V

    .line 183
    :cond_2
    :goto_1
    return-void

    .line 1196
    :cond_3
    aget-object v0, v4, v1

    invoke-virtual {v3, v0}, Lcom/umeng/a/a/c;->a(Ljava/lang/String;)V

    .line 1197
    const-class v0, Lcom/umeng/a/a/e;

    invoke-virtual {p0, v3, v0}, Lcom/umeng/a/a/d;->a(Lu/aly/bv;Ljava/lang/Class;)Lu/aly/bw;

    move-result-object v0

    check-cast v0, Lcom/umeng/a/a/e;

    .line 1198
    if-nez v0, :cond_1

    .line 1195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_4
    iget-boolean v1, v0, Lcom/umeng/a/a/e;->b:Z

    if-eqz v1, :cond_6

    .line 1214
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    invoke-static {v1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;)Lcom/umeng/a/a/f;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1215
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    invoke-static {v1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;)Lcom/umeng/a/a/f;

    move-result-object v1

    iget v3, v0, Lcom/umeng/a/a/e;->c:I

    iget v4, v0, Lcom/umeng/a/a/e;->d:I

    int-to-long v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/umeng/a/a/f;->a(IJ)V

    .line 1218
    :cond_5
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    iget-object v3, p0, Lcom/umeng/a/a/d;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Landroid/content/Context;Lcom/umeng/a/a/e;)V

    .line 1220
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    iget-object v3, p0, Lcom/umeng/a/a/d;->a:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/umeng/a/a/b;->b(Lcom/umeng/a/a/b;Landroid/content/Context;Lcom/umeng/a/a/e;)V

    .line 1221
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    iget-object v0, v0, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    invoke-static {v1, v2}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V

    .line 180
    const-string v1, "MobclickAgent"

    const-string v2, "reques update error"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1224
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/umeng/a/a/d;->b:Lcom/umeng/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
