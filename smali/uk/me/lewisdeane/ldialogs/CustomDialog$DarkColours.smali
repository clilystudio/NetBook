.class final enum Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

.field public static final enum CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

.field public static final enum TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

.field private static final synthetic a:[Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;


# instance fields
.field private final mColour:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    const-string v1, "TITLE"

    const-string v2, "#CCCCCC"

    invoke-direct {v0, v1, v3, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    const-string v1, "CONTENT"

    const-string v2, "#808080"

    invoke-direct {v0, v1, v4, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    const-string v1, "BUTTON"

    const-string v2, "#CCCCCC"

    invoke-direct {v0, v1, v5, v2}, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->TITLE:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    aput-object v1, v0, v3

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->CONTENT:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    aput-object v1, v0, v4

    sget-object v1, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->BUTTON:Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    aput-object v1, v0, v5

    sput-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->mColour:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic access$200(Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->mColour:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;
    .locals 1

    .prologue
    .line 44
    const-class v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    return-object v0
.end method

.method public static values()[Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->a:[Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    invoke-virtual {v0}, [Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luk/me/lewisdeane/ldialogs/CustomDialog$DarkColours;

    return-object v0
.end method
