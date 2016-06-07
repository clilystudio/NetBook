.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    const-string v1, "\u7b5b\u9009"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Ljava/lang/String;)V

    .line 376
    return-void
.end method
