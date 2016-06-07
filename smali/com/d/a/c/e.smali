.class public final Lcom/d/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H"

    iput-object v0, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/d/a/a/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/support/v7/app/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/d/a/a/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v7/app/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/d/a/c/e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/support/v7/app/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
