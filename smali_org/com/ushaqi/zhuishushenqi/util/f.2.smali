.class final Lcom/ushaqi/zhuishushenqi/util/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/e;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/f;->a:Lcom/ushaqi/zhuishushenqi/util/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/f;->a:Lcom/ushaqi/zhuishushenqi/util/e;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Lcom/ushaqi/zhuishushenqi/util/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
