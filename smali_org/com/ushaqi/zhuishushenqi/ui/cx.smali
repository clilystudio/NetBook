.class final Lcom/ushaqi/zhuishushenqi/ui/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/cw;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cw;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cx;->a:Lcom/ushaqi/zhuishushenqi/ui/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cx;->a:Lcom/ushaqi/zhuishushenqi/ui/cw;

    const-string v1, "fail"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cw;->a(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cx;->a:Lcom/ushaqi/zhuishushenqi/ui/cw;

    const-string v1, "success"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cw;->a(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cx;->a:Lcom/ushaqi/zhuishushenqi/ui/cw;

    const-string v1, "fail"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cw;->a(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V

    .line 36
    return-void
.end method
