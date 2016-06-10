.class Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mob/tools/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/mob/tools/b/a;->a(Landroid/content/Context;)Lcom/mob/tools/b/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mob/tools/b/a;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 0
    new-instance v2, Ljava/io/File;

    const-string v3, "ShareSDK"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/mob/tools/b/g;

    invoke-direct {v0}, Lcom/mob/tools/b/g;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    new-instance v0, Ljava/io/File;

    const-string v1, ".ba"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/g;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/mob/tools/b/g;

    invoke-direct {v1}, Lcom/mob/tools/b/g;-><init>()V

    iput-object v1, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    new-instance v1, Ljava/io/File;

    const-string v2, ".ba"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/b/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/sharesdk/framework/utils/d;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/b/g;

    invoke-direct {v0}, Lcom/mob/tools/b/g;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    const-string v1, "buffered_apps"

    invoke-virtual {v0, v1}, Lcom/mob/tools/b/g;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    const-string v1, "buffered_apps_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/b/g;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    const-string v1, "buffered_apps"

    .line 2000
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/framework/statistics/NewAppReceiver$a;->a:Lcom/mob/tools/b/g;

    const-string v1, "buffered_apps_time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/b/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
