.class Lcn/sharesdk/tencent/qq/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcn/sharesdk/tencent/qq/i;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/sharesdk/tencent/qq/j;->h:Lcn/sharesdk/tencent/qq/i;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/j;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/j;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/j;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/j;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/sharesdk/tencent/qq/j;->f:Ljava/lang/String;

    iput-object p8, p0, Lcn/sharesdk/tencent/qq/j;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->h:Lcn/sharesdk/tencent/qq/i;

    invoke-static {v0}, Lcn/sharesdk/tencent/qq/i;->a(Lcn/sharesdk/tencent/qq/i;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/j;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/tencent/qq/j;->h:Lcn/sharesdk/tencent/qq/i;

    iget-object v1, p0, Lcn/sharesdk/tencent/qq/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/sharesdk/tencent/qq/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/sharesdk/tencent/qq/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/sharesdk/tencent/qq/j;->a:Ljava/lang/String;

    iget-object v6, p0, Lcn/sharesdk/tencent/qq/j;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/sharesdk/tencent/qq/j;->f:Ljava/lang/String;

    iget-object v8, p0, Lcn/sharesdk/tencent/qq/j;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcn/sharesdk/tencent/qq/i;->a(Lcn/sharesdk/tencent/qq/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method
