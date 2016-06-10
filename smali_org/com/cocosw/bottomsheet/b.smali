.class final Lcom/cocosw/bottomsheet/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private synthetic a:Lcom/cocosw/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cocosw/bottomsheet/b;->a:Lcom/cocosw/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cocosw/bottomsheet/b;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->a(Lcom/cocosw/bottomsheet/a;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->startLayoutAnimation()V

    .line 195
    return-void
.end method
