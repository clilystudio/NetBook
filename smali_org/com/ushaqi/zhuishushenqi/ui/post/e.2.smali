.class final Lcom/ushaqi/zhuishushenqi/ui/post/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->a:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->a:Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/e;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;Ljava/lang/String;)V

    .line 171
    return-void
.end method
