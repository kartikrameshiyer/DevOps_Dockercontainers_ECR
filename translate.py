import boto3  # install boto3 package


def action(phrase=input("please enter the phrase: ")):
    client = boto3.client('translate', region_name="us-west-2")
    result = client.translate_text(Text=phrase,
                                   SourceLanguageCode="auto",
                                   TargetLanguageCode="en")
    print(result['TranslatedText'])


if __name__ == '__main__':
    action()