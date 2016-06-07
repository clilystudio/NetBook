.class final Lcom/ushaqi/zhuishushenqi/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cg;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0

    .prologue
    .line 97
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
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cg;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    const-string v1, "\u5206\u4eab\u5b8c\u6210!"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cg;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    const-string v1, "share_remove_ad_count"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
