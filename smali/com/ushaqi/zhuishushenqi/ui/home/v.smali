.class final Lcom/ushaqi/zhuishushenqi/ui/home/v;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1709
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/v;->a:Ljava/lang/String;

    .line 2161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2162
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->E(Ljava/lang/String;)Z

    .line 1714
    return-void
.end method
