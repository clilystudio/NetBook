.class final Lcom/ushaqi/zhuishushenqi/ui/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
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
    .line 156
    const-string v0, "share_book"

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method
