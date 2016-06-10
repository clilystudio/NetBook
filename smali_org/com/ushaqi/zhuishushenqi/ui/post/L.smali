.class final Lcom/ushaqi/zhuishushenqi/ui/post/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/P;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    const v5, 0x7f05013e

    invoke-direct {v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Landroid/app/Activity;I)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/L;->b:Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/P;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method
