.class final Lcom/ushaqi/zhuishushenqi/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/MyApplication;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/MyApplication;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/e;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/e;->a:Lcom/ushaqi/zhuishushenqi/MyApplication;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/MyApplication;)V

    .line 97
    return-void
.end method
