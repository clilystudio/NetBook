.class final Lcom/ushaqi/zhuishushenqi/ui/user/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/Z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;B)V

    .line 195
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/Z;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    return-void
.end method
