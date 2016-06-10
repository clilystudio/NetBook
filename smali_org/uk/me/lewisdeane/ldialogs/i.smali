.class final Luk/me/lewisdeane/ldialogs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/me/lewisdeane/ldialogs/g;


# instance fields
.field private synthetic a:Luk/me/lewisdeane/ldialogs/e;

.field private synthetic b:Luk/me/lewisdeane/ldialogs/h;


# direct methods
.method constructor <init>(Luk/me/lewisdeane/ldialogs/h;Luk/me/lewisdeane/ldialogs/e;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/i;->b:Luk/me/lewisdeane/ldialogs/h;

    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/i;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/i;->b:Luk/me/lewisdeane/ldialogs/h;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/h;->a(Luk/me/lewisdeane/ldialogs/h;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/i;->b:Luk/me/lewisdeane/ldialogs/h;

    invoke-static {v0}, Luk/me/lewisdeane/ldialogs/h;->a(Luk/me/lewisdeane/ldialogs/h;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/i;->a:Luk/me/lewisdeane/ldialogs/e;

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 85
    :cond_0
    return-void
.end method
