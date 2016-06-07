.class final Luk/me/lewisdeane/ldialogs/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/me/lewisdeane/ldialogs/c;


# instance fields
.field private synthetic a:Luk/me/lewisdeane/ldialogs/CustomDialog;

.field private synthetic b:Luk/me/lewisdeane/ldialogs/h;


# direct methods
.method constructor <init>(Luk/me/lewisdeane/ldialogs/h;Luk/me/lewisdeane/ldialogs/CustomDialog;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/j;->b:Luk/me/lewisdeane/ldialogs/h;

    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/j;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/j;->b:Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, v0, Luk/me/lewisdeane/ldialogs/h;->b:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/j;->b:Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, v0, Luk/me/lewisdeane/ldialogs/h;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/j;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 122
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/j;->b:Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, v0, Luk/me/lewisdeane/ldialogs/h;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/j;->b:Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, v0, Luk/me/lewisdeane/ldialogs/h;->c:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/j;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 129
    :cond_0
    return-void
.end method
