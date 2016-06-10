.class final Luk/me/lewisdeane/ldialogs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Luk/me/lewisdeane/ldialogs/CustomDialog;


# direct methods
.method constructor <init>(Luk/me/lewisdeane/ldialogs/CustomDialog;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/a;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/a;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Luk/me/lewisdeane/ldialogs/CustomDialog;)Luk/me/lewisdeane/ldialogs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/a;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Luk/me/lewisdeane/ldialogs/CustomDialog;)Luk/me/lewisdeane/ldialogs/c;

    move-result-object v0

    invoke-interface {v0}, Luk/me/lewisdeane/ldialogs/c;->a()V

    .line 140
    :cond_0
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/a;->a:Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/CustomDialog;->dismiss()V

    .line 141
    return-void
.end method
