.class final Lcom/ushaqi/zhuishushenqi/reader/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/aa;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/aa;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ac;->a:Lcom/ushaqi/zhuishushenqi/reader/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ac;->a:Lcom/ushaqi/zhuishushenqi/reader/aa;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/aa;->b()V

    .line 587
    return-void
.end method
