.class final Lcom/umeng/update/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/umeng/update/UpdateDialogActivity;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/umeng/update/UpdateDialogActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    iput p2, p0, Lcom/umeng/update/l;->b:I

    iput p3, p0, Lcom/umeng/update/l;->c:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 55
    iget v0, p0, Lcom/umeng/update/l;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    const/4 v1, 0x5

    iput v1, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    invoke-virtual {v0}, Lcom/umeng/update/UpdateDialogActivity;->finish()V

    .line 63
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/umeng/update/l;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    iput v2, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    iget-boolean v0, v0, Lcom/umeng/update/UpdateDialogActivity;->b:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/umeng/update/l;->a:Lcom/umeng/update/UpdateDialogActivity;

    iput v2, v0, Lcom/umeng/update/UpdateDialogActivity;->a:I

    goto :goto_0
.end method
