.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Lcom/ushaqi/zhuishushenqi/model/BookSummary;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setAppendComment(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/K;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    .line 229
    return-void
.end method
