.class final Lcom/ushaqi/zhuishushenqi/util/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method constructor <init>(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/U;->a:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/U;->a:Lcn/sharesdk/framework/PlatformActionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 255
    return-void
.end method
