.class final Lcom/ushaqi/zhuishushenqi/ui/home/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1693
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1696
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->F(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
