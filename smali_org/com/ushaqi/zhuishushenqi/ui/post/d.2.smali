.class final Lcom/ushaqi/zhuishushenqi/ui/post/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->e:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    .line 138
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/d;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-virtual {v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method
