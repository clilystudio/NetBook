.class final Lu/aly/cp;
.super Lcom/umeng/a/n;
.source "SourceFile"


# instance fields
.field private synthetic a:Lu/aly/ch;


# direct methods
.method constructor <init>(Lu/aly/ch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lu/aly/cp;->a:Lu/aly/ch;

    .line 60
    invoke-direct {p0}, Lcom/umeng/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lu/aly/cp;->a:Lu/aly/ch;

    invoke-static {v0}, Lu/aly/ch;->a(Lu/aly/ch;)Lu/aly/cw;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/cw;->a()V

    .line 63
    return-void
.end method
