.class final Lcom/ushaqi/zhuishushenqi/util/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/Z;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/Z;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/aa;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/Z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ab;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/aa;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/util/ab;-><init>(Lcom/ushaqi/zhuishushenqi/util/Z;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/aa;->a:Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Lcom/ushaqi/zhuishushenqi/util/Z;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/ab;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    :cond_0
    return-void
.end method
