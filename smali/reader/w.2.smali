.class final Lcom/ushaqi/zhuishushenqi/reader/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/v;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/v;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/w;->a:Lcom/ushaqi/zhuishushenqi/reader/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/w;->a:Lcom/ushaqi/zhuishushenqi/reader/v;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/v;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V

    .line 460
    return-void
.end method
