.class final Landroid/support/v7/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V
    .locals 0

    .prologue
    .line 1564
    invoke-direct {p0, p1}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 1577
    return-void
.end method

.method public final a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    .line 2233
    iget-object v0, v0, Landroid/support/v7/app/n;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1568
    if-eqz v0, :cond_0

    .line 1569
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1571
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
