.class final Lcom/ushaqi/zhuishushenqi/ui/post/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/z;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->c:Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;

    const v5, 0x7f05013e

    invoke-direct {v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;Landroid/app/Activity;I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/w;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/z;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method
