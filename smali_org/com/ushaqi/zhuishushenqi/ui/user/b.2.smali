.class final Lcom/ushaqi/zhuishushenqi/ui/user/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/b;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/b;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/b;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/b;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    const-string v1, "QQ"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    return-void
.end method
