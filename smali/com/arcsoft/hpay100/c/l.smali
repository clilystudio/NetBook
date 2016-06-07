.class final Lcom/arcsoft/hpay100/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(ZLandroid/app/Dialog;)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/hpay100/c/l;->a:Z

    iput-object p2, p0, Lcom/arcsoft/hpay100/c/l;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/c/l;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/c/l;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
